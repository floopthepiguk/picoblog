class Icon < ActiveRecord::Base
  #
  # ASSOCIATIONS
  #
  has_many :posts, foreign_key: 'icon_reference_id', primary_key: 'reference_id'

  #
  # VALIDATION
  # 
  validates :reference_id, numericality: { only_integer: true }
  validates :code, :name, :reference_id, presence: true, uniqueness: true
end
