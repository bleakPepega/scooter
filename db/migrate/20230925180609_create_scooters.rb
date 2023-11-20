class CreateScooters < ActiveRecord::Migration[7.0]
  def change
    create_table :scooters do |t|
      t.integer :model
      t.integer :serial_number
      t.integer :batary
      t.integer :coordinate

      t.timestamps
    end
  end
end
