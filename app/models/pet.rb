class Pet < ApplicationRecord

  validates :name, presence: true
  validates :color, presence: true
  validates :species, presence: true
  validates :where, presence: true
  validates :found_on, presence: true
end
