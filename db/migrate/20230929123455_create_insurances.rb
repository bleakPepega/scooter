class CreateInsurances < ActiveRecord::Migration[7.0]
  def change
    create_table :insurances do |t|
      t.string :policy_number
      t.integer :price
      t.references :scooter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
