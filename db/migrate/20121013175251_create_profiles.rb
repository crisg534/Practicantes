class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :career_id
      t.string :skills

      t.timestamps
    end
  end
end
