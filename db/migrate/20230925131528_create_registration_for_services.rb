# frozen_string_literal: true

class CreateRegistrationForServices < ActiveRecord::Migration[7.0]
  def change
    create_table :registration_for_services do |t|
      t.integer :scooter_id
      t.integer :worker_id
      t.date :date

      t.timestamps
    end
  end
end
