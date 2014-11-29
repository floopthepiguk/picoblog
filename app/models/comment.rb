class Comment < ActiveRecord::Base

  #
  # ASSOCIATIONS
  #
  belongs_to :post
  belongs_to :user
  belongs_to :icon


  #
  # VALIDATIONS
  #
  validates :icon, :user, :post, presence: true

end
