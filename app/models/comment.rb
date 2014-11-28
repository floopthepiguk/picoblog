class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  belongs_to :icon
  has_many :comments
  belongs_to :comment
end
