class AddRentRefToIntermediateStop < ActiveRecord::Migration[7.0]
  def change
    remove_column :intermediate_stops, :rent_id, :integer
    add_reference :intermediate_stops, :rent, null: false, foreign_key: true
  end
end
