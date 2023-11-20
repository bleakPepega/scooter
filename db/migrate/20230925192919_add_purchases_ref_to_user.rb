class AddPurchasesRefToUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :purchases, :user_id, :integer
    add_reference :purchases, :user, null: false, foreign_key: true
  end
end
