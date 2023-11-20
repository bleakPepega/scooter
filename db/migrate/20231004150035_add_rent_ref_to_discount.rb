class AddRentRefToDiscount < ActiveRecord::Migration[7.0]
  def change
    add_reference :discounts, :rent, null: false, foreign_key: true
  end
end
