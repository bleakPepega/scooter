class AddRegistrationForServiceRefToRequestStatuses < ActiveRecord::Migration[7.0]
  def change
    remove_column :request_statuses, :registration_for_services_id, :integer
    add_reference :request_statuses, :registration_for_services, null: false, foreign_key: true
  end
end
