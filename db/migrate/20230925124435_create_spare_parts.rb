# frozen_string_literal: true

class CreateSpareParts < ActiveRecord::Migration[7.0]
  def change
    create_table :spare_parts do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
