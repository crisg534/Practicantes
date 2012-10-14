# == Schema Information
#
# Table name: offers
#
#  id            :integer          not null, primary key
#  enterprise_id :integer
#  name          :string(255)
#  description   :string(255)
#  city_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  skills        :string(255)
#  wanted_skills :string(255)
#

class Offer < ActiveRecord::Base
  attr_accessible :city_id, :description, :enterprise_id, :name

  #relations
  belongs_to :enterprise
  belongs_to :city

  has_many  :offer_profiles
  has_many :profiles, through: :offer_profile

  acts_as_taggable
  acts_as_taggable_on :skills, :wanted_skills

  def self.search(params)
    # search(params)
    tagged_with(params[:skills], on: :skills)
      .tagged_with(params[:wanted_skills], on: :wanted_skills)
  end
end
