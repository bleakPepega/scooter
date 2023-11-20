# frozen_string_literal: true

class Worker < ApplicationRecord
  has_one :registration_for_service
  has_one :worker_time
end
