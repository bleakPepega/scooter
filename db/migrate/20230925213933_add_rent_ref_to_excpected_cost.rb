class AddRentRefToExcpectedCost < ActiveRecord::Migration[7.0]
  def change
    remove_column :excpected_costs, :arend_id, :integer
    add_reference :excpected_costs, :rent, null: false, foreign_key: true
  end
end
