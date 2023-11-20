# frozen_string_literal: true

class CreateWorkerTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :worker_times do |t|
      t.integer :worker_id
      t.date :date
      t.time :time_start
      t.time :time_end

      t.timestamps
    end
  end
end
