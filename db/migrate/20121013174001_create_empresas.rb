class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.integer :nit
      t.integer :telefono
      t.string :email
      t.string :url
      t.string :nombre_contacto

      t.timestamps
    end
  end
end
