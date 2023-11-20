# frozen_string_literal: true

class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.integer :user_id
      t.integer :summ
      t.date :date

      t.timestamps
    end
  end
end
