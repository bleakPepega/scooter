class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.string :greeting
      t.integer :discount

      t.timestamps
    end
  end
end
