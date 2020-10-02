# frozen_string_literal: true

# CityController
class City < ApplicationRecord
  belongs_to :state
end
