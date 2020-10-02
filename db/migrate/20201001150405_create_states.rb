# frozen_string_literal: true

# Create cities migration
class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|
      t.string :state_name

      t.timestamps
    end
  end
end
