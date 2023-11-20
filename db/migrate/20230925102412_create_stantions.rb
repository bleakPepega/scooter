# frozen_string_literal: true

class CreateStantions < ActiveRecord::Migration[7.0]
  def change
    create_table :stantions do |t|
      t.string :adres
      t.string :capacity
      t.integer :number_of_scooters

      t.timestamps
    end
  end
end
