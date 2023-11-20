# frozen_string_literal: true

class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.integer :scooter_id
      t.integer :coordinate
      t.time :time_start

      t.timestamps
    end
  end
end
