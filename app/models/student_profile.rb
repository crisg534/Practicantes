# == Schema Information
#
# Table name: student_profiles
#
#  id         :integer          not null, primary key
#  student_id :integer
#  profile_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class StudentProfile < ActiveRecord::Base
  
  attr_accessible :student_id, :profile_id

  # Relatios
  belongs_to :student
  belongs_to :profile

  acts_as_taggable
  acts_as_taggable_on :skills, :wanted_skills

end
