# frozen_string_literal: true

class CreateIntermediateStops < ActiveRecord::Migration[7.0]
  def change
    create_table :intermediate_stops do |t|
      t.integer :rent_it
      t.string :location
      t.time :time

      t.timestamps
    end
  end
end
