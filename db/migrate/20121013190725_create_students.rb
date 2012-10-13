class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :college
      t.string :availability
      t.string :email
      t.string :phone
      t.integer :city_id

      t.timestamps
    end
  end
end
