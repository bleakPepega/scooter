# frozen_string_literal: true

class CreateWorkers < ActiveRecord::Migration[7.0]
  def change
    create_table :workers do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
