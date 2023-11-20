# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :second_name
      t.string :mail
      t.integer :phone_number

      t.timestamps
    end
  end
end
