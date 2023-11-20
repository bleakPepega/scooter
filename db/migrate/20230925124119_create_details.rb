# frozen_string_literal: true

class CreateDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :details do |t|
      t.string :description
      t.integer :scooter_id

      t.timestamps
    end
  end
end
