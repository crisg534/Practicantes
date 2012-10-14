class AddPaymentToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :payment, :boolean
  end
end
