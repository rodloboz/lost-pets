class Pet < ApplicationRecord
  # SPECIES = ["dog", "cat"...]
  SPECIES = %w(dog cat snake spider tiger unicorn)

  validates :name, :found_on, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    (Time.zone.now - found_on.to_time).to_i / 1.day
  end
end
