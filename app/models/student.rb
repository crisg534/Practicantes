class Student < ActiveRecord::Base
  attr_accessible :availability, :city_id, :college, :email, :name, :phone

  # Relations
  has_many :student_profiles
  has_many :profiles, though: :student_profile

  belongs_to :career
end
