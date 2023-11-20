class AddRentRefToProgressingPrices < ActiveRecord::Migration[7.0]
  def change
    remove_column :progressing_prices, :rent_id, :integer
    add_reference :progressing_prices, :rent, null: false, foreign_key: true
  end
end
