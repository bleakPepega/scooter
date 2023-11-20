class Scooter < ApplicationRecord
  has_one :history
  has_one :security
  has_one :location
  has_one :rent
  has_one :batary_charge
  has_one :request_in_service
  has_one :detail
end
