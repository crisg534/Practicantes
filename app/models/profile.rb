class Profile < ActiveRecord::Base
  attr_accessible :career_id, :name, :skills
  #relations
  belongs_to :career
end
