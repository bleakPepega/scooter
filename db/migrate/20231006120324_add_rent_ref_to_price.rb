class AddRentRefToPrice < ActiveRecord::Migration[7.0]
  def change
    add_reference :prices, :rent, null: false, foreign_key: true
  end
end
