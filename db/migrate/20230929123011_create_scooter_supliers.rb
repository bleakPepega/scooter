class CreateScooterSupliers < ActiveRecord::Migration[7.0]
  def change
    create_table :scooter_supliers do |t|
      t.string :name
      t.string :legal_entities
      t.integer :quantity

      t.timestamps
    end
  end
end
