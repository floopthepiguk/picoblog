class User < ActiveRecord::Base
  include Followable
  include Follower


  #
  # Devise
  #
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable

  #
  # Validations
  # 
  validates :username, presence: true, uniqueness: true
  validates :username, format: { with: /\A[a-zA-Z0-9]+\Z/ }
  validates :password, presence: true
  validates :password, confirmation: true


  #
  # Associations
  #
  has_many :posts,          dependent: :destroy
  has_many :comments,       dependent: :destroy

end
