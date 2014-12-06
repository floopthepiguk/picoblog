class Comment < ActiveRecord::Base

  #
  # ASSOCIATIONS
  #
  belongs_to :post
  belongs_to :user
  belongs_to :icon_color
  belongs_to :icon


  #
  # VALIDATIONS
  #
  validates :icon, :user, :post, presence: true


  #
  # DEMETER DELEGATIONS
  #
  delegate :email, to: :user,         prefix: true
  delegate :hex,   to: :icon_color,   prefix: true,   allow_nil: true


end
