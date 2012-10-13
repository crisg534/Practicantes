class OfferProfile < ActiveRecord::Base
  
  attr_accessible :offer_id, :profile_id

  # Relatios
  belongs_to :offer
  belongs_to :offer
end
