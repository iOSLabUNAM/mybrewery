# frozen_string_literal: true

class Beer < ApplicationRecord
  has_many :kegs, dependent: :destroy
  validates :name, presence: true
  validates :abu, numericality: { greater_than_or_equal_to: 0 }
  validates :ibu, numericality: { greater_than_or_equal_to: 0, only_integer: true, less_than_or_equal_to: 100 }

  delegate :remaining_ml, :remaining_percent, :consumed_percent, to: :keg, prefix: true, allow_nil: true

  def keg
    kegs.last
  end
end
