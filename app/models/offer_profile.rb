class OfferProfile < ActiveRecord::Base
  
  attr_accessible :offer_id, :profile_id

  # Relations
  belongs_to :offer
end
