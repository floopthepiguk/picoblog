module Follower
  extend ActiveSupport::Concern

  included do
    has_many :active_relationships,  class_name:  "Relationship", foreign_key: "follower_id", dependent:   :destroy
    has_many :following, through: :active_relationships,  source: :followed
  end


  #  
  # follow
  #
  # Follows a user.
  #
  def follow(other_user)
    active_relationships.create(followed_id: other_user.id)
  end

  # 
  # unfollow
  #
  # Unfollows a user.
  #
  def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  # 
  # following?
  #
  # Returns true if the current user is following the other user.
  #
  def following?(other_user)
    following.include?(other_user)
  end

end
