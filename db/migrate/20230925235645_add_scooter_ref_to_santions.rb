class AddScooterRefToSantions < ActiveRecord::Migration[7.0]
  def change
    add_reference :stantions, :scooter, null: false, foreign_key: true
  end
end
