class Relationship < ActiveRecord::Base

  #
  # Associations
  # 
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"


  #
  # Validations
  #
  validates :follower_id, :followed_id, presence: true
end
