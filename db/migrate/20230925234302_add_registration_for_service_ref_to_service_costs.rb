class AddRegistrationForServiceRefToServiceCosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :service_costs, :registration_for_services_id, :integer
    add_reference :service_costs, :registration_for_services, null: false, foreign_key: true
  end
end
