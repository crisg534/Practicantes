# == Schema Information
#
# Table name: profiles
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  career_id  :integer
#  skills     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Profile < ActiveRecord::Base
  attr_accessible :career_id, :name, :skills

  #relations
  belongs_to :career
  acts_as_taggable

  acts_as_taggable_on :skills

  scope :name_search, lambda { |name| search(name_contains: name).all }

  acts_as_api

  api_accessible :list do |template|
    template.add :id
    template.add :name
  end

end
