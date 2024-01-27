# frozen_string_literal: true

class Beer < ApplicationRecord
  validates :name, presence: true
  validates :abu, numericality: { greater_than_or_equal_to: 0 }
  validates :ibu, numericality: { greater_than_or_equal_to: 0, only_integer: true, less_than_or_equal_to: 100 }
end
