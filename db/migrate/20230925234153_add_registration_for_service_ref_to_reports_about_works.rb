class AddRegistrationForServiceRefToReportsAboutWorks < ActiveRecord::Migration[7.0]
  def change
    remove_column :reports_about_works, :registration_for_services_id, :integer
    add_reference :reports_about_works, :registration_for_services, null: false, foreign_key: true
  end
end
