# frozen_string_literal: true

class CreateAlerts < ActiveRecord::Migration[7.0]
  def change
    create_table :alerts do |t|
      t.integer :user_id
      t.string :text
      t.time :time


      t.timestamps
    end
  end
end
