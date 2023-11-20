# frozen_string_literal: true

class User < ApplicationRecord
  has_one :purchase
  has_one :feedback
  has_one :history
  has_one :alert
  has_one :rent
  has_one :rating
end
