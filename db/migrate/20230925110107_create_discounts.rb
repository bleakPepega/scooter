# frozen_string_literal: true

class CreateDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :discounts do |t|
      t.string :description
      t.integer :procent
      t.date :days

      t.timestamps
    end
  end
end
