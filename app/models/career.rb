class Career < ActiveRecord::Base
  attr_accessible :area_id, :name
  
  #relations
  has_many :profiles
  belongs_to :area
end
