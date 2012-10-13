class Career < ActiveRecord::Base
  attr_accessible :area_id, :name
  
  #relations
  belongs_to :area
  has_many :profiles
end
