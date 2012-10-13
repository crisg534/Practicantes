class Profile < ActiveRecord::Base
  attr_accessible :career_id, :name, :skills

  belongs_to :career
end
