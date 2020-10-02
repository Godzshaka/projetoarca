# frozen_string_literal: true

# StateModel
class State < ApplicationRecord
  has_many :cities
end
