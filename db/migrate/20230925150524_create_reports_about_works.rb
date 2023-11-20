# frozen_string_literal: true

class CreateReportsAboutWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :reports_about_works do |t|
      t.integer :worker_id
      t.string :description
      t.integer :registration_for_services_id

      t.timestamps
    end
  end
end
