# frozen_string_literal: true

class CreatePrices < ActiveRecord::Migration[7.0]
  def change
    create_table :prices do |t|
      t.string :model
      t.integer :price_in_minute
      t.date :special_days

      t.timestamps
    end
  end
end
