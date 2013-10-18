class Week < ActiveRecord::Base
  attr_accessible :code_id, :title, :description
  
  has_many :codes
end
