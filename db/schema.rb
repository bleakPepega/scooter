# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_06_122230) do
  create_table "alerts", force: :cascade do |t|
    t.string "text"
    t.time "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_alerts_on_user_id"
  end

  create_table "batary_charges", force: :cascade do |t|
    t.integer "procent"
    t.time "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "scooter_id", null: false
    t.index ["scooter_id"], name: "index_batary_charges_on_scooter_id"
  end

  create_table "bonuces", force: :cascade do |t|
    t.string "description"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "details", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "scooter_id", null: false
    t.index ["scooter_id"], name: "index_details_on_scooter_id"
  end

  create_table "discounts", force: :cascade do |t|
    t.string "description"
    t.integer "procent"
    t.date "days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rent_id", null: false
    t.index ["rent_id"], name: "index_discounts_on_rent_id"
  end

  create_table "excpected_costs", force: :cascade do |t|
    t.time "time"
    t.integer "summ"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rent_id", null: false
    t.index ["rent_id"], name: "index_excpected_costs_on_rent_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "coment"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_feedbacks_on_user_id"
  end

  create_table "histories", force: :cascade do |t|
    t.time "start_time"
    t.time "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.integer "scooter_id", null: false
    t.index ["scooter_id"], name: "index_histories_on_scooter_id"
    t.index ["user_id"], name: "index_histories_on_user_id"
  end

  create_table "insurances", force: :cascade do |t|
    t.string "policy_number"
    t.integer "price"
    t.integer "scooter_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scooter_id"], name: "index_insurances_on_scooter_id"
  end

  create_table "intermediate_stops", force: :cascade do |t|
    t.string "location"
    t.time "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rent_id", null: false
    t.index ["rent_id"], name: "index_intermediate_stops_on_rent_id"
  end

  create_table "locations", force: :cascade do |t|
    t.integer "coordinate"
    t.time "time_start"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "scooter_id", null: false
    t.index ["scooter_id"], name: "index_locations_on_scooter_id"
  end

  create_table "prices", force: :cascade do |t|
    t.string "model"
    t.integer "price_in_minute"
    t.date "special_days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rent_id", null: false
    t.index ["rent_id"], name: "index_prices_on_rent_id"
  end

  create_table "progressing_prices", force: :cascade do |t|
    t.integer "summ"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rent_id", null: false
    t.index ["rent_id"], name: "index_progressing_prices_on_rent_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.integer "summ"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_purchases_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "rating"
    t.string "greeting"
    t.integer "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "registration_for_services", force: :cascade do |t|
    t.integer "scooter_id"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rent_id", null: false
    t.integer "worker_id", null: false
    t.index ["rent_id"], name: "index_registration_for_services_on_rent_id"
    t.index ["worker_id"], name: "index_registration_for_services_on_worker_id"
  end

  create_table "rents", force: :cascade do |t|
    t.time "time_start"
    t.time "prognosing_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.integer "scooter_id", null: false
    t.time "time_end"
    t.index ["scooter_id"], name: "index_rents_on_scooter_id"
    t.index ["user_id"], name: "index_rents_on_user_id"
  end

  create_table "reports_about_works", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "worker_id", null: false
    t.integer "registration_for_services_id", null: false
    t.index ["registration_for_services_id"], name: "index_reports_about_works_on_registration_for_services_id"
    t.index ["worker_id"], name: "index_reports_about_works_on_worker_id"
  end

  create_table "request_in_services", force: :cascade do |t|
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "scooter_id", null: false
    t.index ["scooter_id"], name: "index_request_in_services_on_scooter_id"
  end

  create_table "request_statuses", force: :cascade do |t|
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "registration_for_services_id", null: false
    t.index ["registration_for_services_id"], name: "index_request_statuses_on_registration_for_services_id"
  end

  create_table "scooter_rents", force: :cascade do |t|
    t.string "model"
    t.integer "serial_number"
    t.integer "battery"
    t.integer "coordinates"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scooter_supliers", force: :cascade do |t|
    t.string "name"
    t.string "legal_entities"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "scooter_suplier_id", null: false
    t.index ["scooter_suplier_id"], name: "index_scooter_supliers_on_scooter_suplier_id"
  end

  create_table "scooters", force: :cascade do |t|
    t.integer "model"
    t.integer "serial_number"
    t.integer "batary"
    t.integer "coordinate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "securities", force: :cascade do |t|
    t.boolean "turn_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "scooter_id", null: false
    t.index ["scooter_id"], name: "index_securities_on_scooter_id"
  end

  create_table "service_costs", force: :cascade do |t|
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "registration_for_services_id", null: false
    t.index ["registration_for_services_id"], name: "index_service_costs_on_registration_for_services_id"
  end

  create_table "spare_parts", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "spare_part_id", null: false
    t.index ["spare_part_id"], name: "index_spare_parts_on_spare_part_id"
  end

  create_table "stantions", force: :cascade do |t|
    t.string "adres"
    t.string "capacity"
    t.integer "number_of_scooters"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "scooter_id", null: false
    t.index ["scooter_id"], name: "index_stantions_on_scooter_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "second_name"
    t.string "mail"
    t.integer "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "worker_times", force: :cascade do |t|
    t.date "date"
    t.time "time_start"
    t.time "time_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "worker_id", null: false
    t.index ["worker_id"], name: "index_worker_times_on_worker_id"
  end

  create_table "workers", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "alerts", "users"
  add_foreign_key "batary_charges", "scooters"
  add_foreign_key "details", "scooters"
  add_foreign_key "discounts", "rents"
  add_foreign_key "excpected_costs", "rents"
  add_foreign_key "feedbacks", "users"
  add_foreign_key "histories", "scooters"
  add_foreign_key "histories", "users"
  add_foreign_key "insurances", "scooters"
  add_foreign_key "intermediate_stops", "rents"
  add_foreign_key "locations", "scooters"
  add_foreign_key "prices", "rents"
  add_foreign_key "progressing_prices", "rents"
  add_foreign_key "purchases", "users"
  add_foreign_key "ratings", "users"
  add_foreign_key "registration_for_services", "rents"
  add_foreign_key "registration_for_services", "workers"
  add_foreign_key "rents", "scooters"
  add_foreign_key "rents", "users"
  add_foreign_key "reports_about_works", "registration_for_services", column: "registration_for_services_id"
  add_foreign_key "reports_about_works", "workers"
  add_foreign_key "request_in_services", "scooters"
  add_foreign_key "request_statuses", "registration_for_services", column: "registration_for_services_id"
  add_foreign_key "scooter_supliers", "scooter_supliers"
  add_foreign_key "securities", "scooters"
  add_foreign_key "service_costs", "registration_for_services", column: "registration_for_services_id"
  add_foreign_key "spare_parts", "spare_parts"
  add_foreign_key "stantions", "scooters"
  add_foreign_key "worker_times", "workers"
end
