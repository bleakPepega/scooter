# frozen_string_literal: true

class RegistrationForService < ApplicationRecord
  has_one :reports_about_work
  has_one :request_status
  has_one :service_cost
  has_one :scooter_suplier
  has_one :spare_part
end
