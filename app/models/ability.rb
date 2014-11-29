class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    #Posts
    can :manage, Post, user_id: user.id
    can :read, Post

    #Comments
    can :create, Comment
  end

end
