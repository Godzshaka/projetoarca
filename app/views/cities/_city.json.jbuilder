# frozen_string_literal: true

json.extract! city, :id, :city_name, :created_at, :updated_at
json.url city_url(city, format: :json)
