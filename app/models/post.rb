class Post < ActiveRecord::Base

  #
  # VALIDATIONS
  #
  validates :icon, :user, :icon_color, presence: true

  #
  # ASSOCIATIONS
  # 
  belongs_to :icon_color
  belongs_to :icon
  belongs_to :user
  has_many :comments, dependent: :destroy


  #
  # SCOPES
  #
  default_scope {  order("created_at DESC") } 


  #
  # DEMETER DELEGATIONS
  #
  delegate :email,  to: :user,        prefix: true
  delegate :count,  to: :comments,    prefix: true
  delegate :hex,    to: :icon_color,  prefix: true,   allow_nil: true


end
