class AddWorkerRefToWorkerTimes < ActiveRecord::Migration[7.0]
  def change
    remove_column :worker_times, :worker_id, :integer
    add_reference :worker_times, :worker, null: false, foreign_key: true
  end
end
