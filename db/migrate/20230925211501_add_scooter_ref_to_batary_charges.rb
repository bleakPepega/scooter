class AddScooterRefToBataryCharges < ActiveRecord::Migration[7.0]
  def change
    remove_column :batary_charges, :scooter_id, :integer
    add_reference :batary_charges, :scooter, null: false, foreign_key: true
  end
end
