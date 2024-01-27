# frozen_string_literal: true

json.extract! keg, :id, :capacity_ml, :consumed_ml, :beer_id, :created_at, :updated_at
json.url keg_url(keg, format: :json)
