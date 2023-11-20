class RemovePartNumberFromHistories < ActiveRecord::Migration[7.0]
  def change
    remove_column :histories, :users_id, :integer
  end
end
