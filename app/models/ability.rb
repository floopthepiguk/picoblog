class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    #Users
    can :read, User
    can :manage, User, id: user.id

    #Posts
    can :read, Post
    can :manage, Post, user_id: user.id

    #Comments
    can :create, Comment

  end

end
