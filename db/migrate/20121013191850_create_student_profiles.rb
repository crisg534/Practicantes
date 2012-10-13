class CreateStudentProfiles < ActiveRecord::Migration
  def change
    create_table :student_profiles do |t|
      t.integer :student_id
      t.integer :profile_id

      t.timestamps
    end
  end
end
