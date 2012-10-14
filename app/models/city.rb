# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  country    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class City < ActiveRecord::Base
  attr_accessible :country, :name

  #relations
  has_many :offers

  scope :search, lambda { |name| search(name_contains: name).all }

  acts_as_api

  api_accessible :list do |template|
    template.add :id
    template.add :name
  end
end
