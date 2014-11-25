class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    can :manage, Post, user_id: user.id
  end

end
