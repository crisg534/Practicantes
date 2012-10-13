class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.string :name
      t.integer :area_id

      t.timestamps
    end
  end
end
