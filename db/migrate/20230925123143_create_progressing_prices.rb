# frozen_string_literal: true

class CreateProgressingPrices < ActiveRecord::Migration[7.0]
  def change
    create_table :progressing_prices do |t|
      t.integer :rent_id
      t.integer :summ

      t.timestamps
    end
  end
end
