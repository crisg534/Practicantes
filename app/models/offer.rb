class Offer < ActiveRecord::Base
  attr_accessible :city_id, :description, :enterprise_id, :name
  
  #relations
  belongs_to :enterprise
  belongs_to :city
  has_many  :offer_profiles
  has_many :profiles, through: :offer_profile
end
