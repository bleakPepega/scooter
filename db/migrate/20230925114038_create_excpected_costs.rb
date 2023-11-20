# frozen_string_literal: true

class CreateExcpectedCosts < ActiveRecord::Migration[7.0]
  def change
    create_table :excpected_costs do |t|
      t.integer :arend_id
      t.time :time
      t.integer :summ

      t.timestamps
    end
  end
end
