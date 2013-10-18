class Code < ActiveRecord::Base
  attr_accessible :title, :user_id, :post, :week_id
  
  belongs_to :user
  belongs_to :week
  has_many :comments
  
end
