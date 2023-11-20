class RemovePartRentItFromIntermediateStops < ActiveRecord::Migration[7.0]
  def change
    remove_column :intermediate_stops, :rent_it, :integer
  end
end
