# == Schema Information
#
# Table name: careers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  area_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Career < ActiveRecord::Base
  attr_accessible :area_id, :name
  
  #relations
  has_many :profiles
  belongs_to :area
end
