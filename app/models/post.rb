class Post < ActiveRecord::Base

  #
  # VALIDATIONS
  #
  validates :icon, presence: true

  #
  # ASSOCIATIONS
  # 
  belongs_to :icon

  #
  # SCOPES
  #
  default_scope {  order("created_at DESC") } 
end
