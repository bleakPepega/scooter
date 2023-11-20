class AddWorkerRefToReportsAboutWorks < ActiveRecord::Migration[7.0]
  def change
    remove_column :reports_about_works, :worker_id, :integer
    add_reference :reports_about_works, :worker, null: false, foreign_key: true
  end
end
