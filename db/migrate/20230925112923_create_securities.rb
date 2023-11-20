# frozen_string_literal: true

class CreateSecurities < ActiveRecord::Migration[7.0]
  def change
    create_table :securities do |t|
      t.integer :scooter_id
      t.boolean :turn_on

      t.timestamps
    end
  end
end
