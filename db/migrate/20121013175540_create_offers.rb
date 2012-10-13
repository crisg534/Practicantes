class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer :enterprise_id
      t.string :name
      t.string :description
      t.integer :city_id

      t.timestamps
    end
  end
end
