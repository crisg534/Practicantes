class Offer < ActiveRecord::Base
  attr_accessible :city_id, :description, :enterprise_id, :name
  has_many :cities, :enterprises
end
