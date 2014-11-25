class Post < ActiveRecord::Base

  #
  # ASSOCIATIONS
  # 
  has_one :icon, foreign_key: 'reference_id', primary_key: 'icon_reference_id'

end
