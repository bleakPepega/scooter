# frozen_string_literal: true

class CreateHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :histories do |t|
      t.integer :users_id
      t.integer :scooter_id
      t.time :start_time
      t.time :end_time


      t.timestamps
    end
  end
end
