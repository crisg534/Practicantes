class City < ActiveRecord::Base
  attr_accessible :country, :name

  #relations
  has_many :offers
end
