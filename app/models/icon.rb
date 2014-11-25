class Icon < ActiveRecord::Base
  #
  # ASSOCIATIONS
  #
  has_many :posts

  #
  # VALIDATION
  # 
  validates :code, :name, presence: true, uniqueness: true
end
