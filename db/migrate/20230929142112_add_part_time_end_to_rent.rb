class AddPartTimeEndToRent < ActiveRecord::Migration[7.0]
  def change
    add_column :rents, :time_end, :time
  end
end
