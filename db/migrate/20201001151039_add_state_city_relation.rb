# frozen_string_literal: true

# Create cities and States association
class AddStateCityRelation < ActiveRecord::Migration[6.0]
  def change
    add_reference :cities, :state, index: true
  end
end
