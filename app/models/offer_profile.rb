# == Schema Information
#
# Table name: offer_profiles
#
#  id         :integer          not null, primary key
#  offer_id   :integer
#  profile_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class OfferProfile < ActiveRecord::Base
  
  attr_accessible :offer_id, :profile_id

  # Relations
  belongs_to :offer
  belongs_to :profile
end
