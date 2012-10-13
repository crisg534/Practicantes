class City < ActiveRecord::Base
  attr_accessible :country, :name

  has_many :offers
end
