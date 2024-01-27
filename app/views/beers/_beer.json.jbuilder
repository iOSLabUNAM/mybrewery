# frozen_string_literal: true

json.extract! beer, :id, :name, :kind, :abu, :ibu, :keg_remaining_ml, :keg_remaining_percent, :keg_consumed_percent,
              :created_at, :updated_at
json.url beer_url(beer, format: :json)
