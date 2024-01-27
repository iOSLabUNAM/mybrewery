# frozen_string_literal: true

class Keg < ApplicationRecord
  belongs_to :beer

  validates :capacity_ml, numericality: { greater_than_or_equal_to: 0 }
  validates :consumed_ml, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: :capacity_ml }

  def remaining_ml
    capacity_ml - consumed_ml
  end

  def remaining_percent
    remaining_ml * 100 / capacity_ml
  end

  def consumed_percent
    consumed_ml * 100 / capacity_ml
  end

  def consume!(ml)
    update!(consumed_ml: consumed_ml + ml)
  end
end
