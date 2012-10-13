class StudentProfile < ActiveRecord::Base
  
  attr_accessible :student_id, :profile_id

  # Relatios
  belongs_to :student
  belongs_to :offer
end
