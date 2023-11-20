class AddScooterRefToSecurities < ActiveRecord::Migration[7.0]
  def change
    remove_column :securities, :scooter_id, :integer
    add_reference :securities, :scooter, null: false, foreign_key: true
  end
end
