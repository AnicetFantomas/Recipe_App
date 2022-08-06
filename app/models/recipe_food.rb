class RecipeFood < ApplicationRecord
  belongs_to :recipe
  belongs_to :food
  validates :food, presence: true
  validates :recipe, presence: true
  validates :quantity, :food_id, presence: true
  validates :quantity, numericality: { only_integer: true, greater_than: 0}
end
