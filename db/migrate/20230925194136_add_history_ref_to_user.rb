class AddHistoryRefToUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :histories, :user_id, :integer
    add_reference :histories, :user, null: false, foreign_key: true
  end
end
