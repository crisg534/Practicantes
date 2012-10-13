class Area < ActiveRecord::Base
  attr_accessible :name
  
  #relations
  has_many :careers
  
end
