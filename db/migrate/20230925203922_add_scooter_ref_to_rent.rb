class AddScooterRefToRent < ActiveRecord::Migration[7.0]
  def change
    remove_column :rents, :scooter_id, :integer
    add_reference :rents, :scooter, null: false, foreign_key: true
  end
end
