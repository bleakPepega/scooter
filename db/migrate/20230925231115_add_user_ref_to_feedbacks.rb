class AddUserRefToFeedbacks < ActiveRecord::Migration[7.0]
  def change
    remove_column :feedbacks, :user_id, :integer
    add_reference :feedbacks, :user, null: false, foreign_key: true
  end
end
