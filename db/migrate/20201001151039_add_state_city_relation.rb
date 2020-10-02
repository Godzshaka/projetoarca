# frozen_string_literal: true

class AddStateCityRelation < ActiveRecord::Migration[6.0]
  def change
    add_reference :cities, :state, index: true
  end
end
