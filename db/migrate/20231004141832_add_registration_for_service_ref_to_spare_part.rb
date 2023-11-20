class AddRegistrationForServiceRefToSparePart < ActiveRecord::Migration[7.0]
  def change
    add_reference :spare_parts, :spare_part, null: false, foreign_key: true
  end
end
