class AddScooterRefToLocations < ActiveRecord::Migration[7.0]
  def change
    remove_column :locations, :scooter_id, :integer
    add_reference :locations, :scooter, null: false, foreign_key: true
  end
end
