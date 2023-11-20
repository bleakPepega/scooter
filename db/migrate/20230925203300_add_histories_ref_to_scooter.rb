class AddHistoriesRefToScooter < ActiveRecord::Migration[7.0]
  def change
    remove_column :histories, :scooter_id, :integer
    add_reference :histories, :scooter, null: false, foreign_key: true
  end
end
