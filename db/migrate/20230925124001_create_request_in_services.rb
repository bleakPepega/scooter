# frozen_string_literal: true

class CreateRequestInServices < ActiveRecord::Migration[7.0]
  def change
    create_table :request_in_services do |t|
      t.integer :scooter_id
      t.date :date

      t.timestamps
    end
  end
end
