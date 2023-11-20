# frozen_string_literal: true

class CreateBataryCharges < ActiveRecord::Migration[7.0]
  def change
    create_table :batary_charges do |t|
      t.integer :scooter_id
      t.integer :procent
      t.time :time

      t.timestamps
    end
  end
end
