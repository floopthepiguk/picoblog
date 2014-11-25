class Icon < ActiveRecord::Base

  #
  # VALIDATION
  # 
  validates :reference_id, numericality: { only_integer: true }
  validates :code, :name, :reference_id, presence: true, uniqueness: true
end
