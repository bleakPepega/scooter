# frozen_string_literal: true

class CreateRents < ActiveRecord::Migration[7.0]
  def change
    create_table :rents do |t|
      t.integer :user_id
      t.integer :scooter_id
      t.time :time_start
      t.time :prognosing_time


      t.timestamps
    end
  end
end
