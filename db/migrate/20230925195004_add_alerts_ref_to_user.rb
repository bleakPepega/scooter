class AddAlertsRefToUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :alerts, :user_id, :integer
    add_reference :alerts, :user, null: false, foreign_key: true
  end
end
