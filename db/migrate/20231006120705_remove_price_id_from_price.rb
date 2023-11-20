class RemovePriceIdFromPrice < ActiveRecord::Migration[7.0]
  def change
    remove_column :prices, :price_id, :integer
  end
end
