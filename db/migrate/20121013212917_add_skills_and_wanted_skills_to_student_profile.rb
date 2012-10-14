class AddSkillsAndWantedSkillsToStudentProfile < ActiveRecord::Migration
  def change
    add_column :student_profiles, :skills, :string
    add_column :student_profiles, :wanted_skills, :string
  end
end
