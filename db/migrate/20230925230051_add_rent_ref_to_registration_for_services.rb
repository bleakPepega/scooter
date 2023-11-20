class AddRentRefToRegistrationForServices < ActiveRecord::Migration[7.0]
  def change
    remove_column :registration_for_services, :rent_id, :integer
    add_reference :registration_for_services, :rent, null: false, foreign_key: true
  end
end
