class AddRentRefToUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :rents, :user_id, :integer
    add_reference :rents, :user, null: false, foreign_key: true
  end
end
