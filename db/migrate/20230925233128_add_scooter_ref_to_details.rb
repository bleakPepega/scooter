class AddScooterRefToDetails < ActiveRecord::Migration[7.0]
  def change
    remove_column :details, :scooter_id, :integer
    add_reference :details, :scooter, null: false, foreign_key: true
  end
end
