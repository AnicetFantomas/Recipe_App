class Food < ApplicationRecord
  belongs_to :user, optional: true
  has_many :recipe_foods
  has_many :recipes, through: :recipe_foods
  validates :name, presence: true
  validates :measurement_unit, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 1, only_integer: true }
end
