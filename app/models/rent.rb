# frozen_string_literal: true

class Rent < ApplicationRecord
  has_one :progressing_price
  has_one :intermediate_stop
  has_one :excpected_cost
  has_one :registration_for_service
  has_one :discount
  has_one :price
end
