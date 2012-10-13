class CreateOfferProfiles < ActiveRecord::Migration
  def change
    create_table :offer_profiles do |t|
      t.integer :offer_id
      t.integer :profile_id

      t.timestamps
    end
  end
end
