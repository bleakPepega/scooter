# frozen_string_literal: true

class CreateServiceCosts < ActiveRecord::Migration[7.0]
  def change
    create_table :service_costs do |t|
      t.integer :registration_for_services_id
      t.integer :price

      t.timestamps
    end
  end
end
