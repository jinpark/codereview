class Code < ActiveRecord::Base
  attr_accessible :title, :user_id, :post
  
  belongs_to :user
  has_many :comments
  
end
