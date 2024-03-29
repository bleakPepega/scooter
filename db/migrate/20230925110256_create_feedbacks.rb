# frozen_string_literal: true

class CreateFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbacks do |t|
      t.integer :user_id
      t.string :coment
      t.integer :rating

      t.timestamps
    end
  end
end
