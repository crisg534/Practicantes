class CreateEnterprises < ActiveRecord::Migration
  def change
    create_table :enterprises do |t|
      t.string :name
      t.integer :nit
      t.string :address
      t.integer :phone
      t.string :email
      t.string :url
      t.string :contact_name

      t.timestamps
    end
  end
end
