# frozen_string_literal: true

class CreateRequestStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :request_statuses do |t|
      t.integer :registration_for_services_id
      t.boolean :status

      t.timestamps
    end
  end
end
