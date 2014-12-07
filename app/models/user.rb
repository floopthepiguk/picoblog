class User < ActiveRecord::Base
  include Followable
  include Follower


  #
  # Devise
  #
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable


  #
  # Associations
  #
  has_many :posts,          dependent: :destroy
  has_many :comments,       dependent: :destroy

end
