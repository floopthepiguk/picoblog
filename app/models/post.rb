class Post < ActiveRecord::Base

  #
  # VALIDATIONS
  #
  validates :icon, presence: true

  #
  # ASSOCIATIONS
  # 
  belongs_to :icon
  belongs_to :user
  has_many :comments


  #
  # SCOPES
  #
  default_scope {  order("created_at DESC") } 

end
