class AddScooterRefToRequestInServices < ActiveRecord::Migration[7.0]
  def change
    remove_column :request_in_services, :scooter_id, :integer
    add_reference :request_in_services, :scooter, null: false, foreign_key: true
  end
end
