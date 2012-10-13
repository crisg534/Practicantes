class Offer < ActiveRecord::Base
  attr_accessible :city_id, :description, :enterprise_id, :name
  
  #relations
  belongs_to :enterprise
  has_many :cities
end
