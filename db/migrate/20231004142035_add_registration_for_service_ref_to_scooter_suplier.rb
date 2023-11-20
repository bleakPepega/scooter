class AddRegistrationForServiceRefToScooterSuplier < ActiveRecord::Migration[7.0]
  def change
    add_reference :scooter_supliers, :scooter_suplier, null: false, foreign_key: true
  end
end
