class Icon < ActiveRecord::Base
  #
  # VALIDATION
  # 
  validates :code, :name, presence: true, uniqueness: true
end
