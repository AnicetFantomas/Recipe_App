class RecipeFood < ApplicationRecord
  belongs_to :recipe, :optional => true
  belongs_to :food, :optional => true
  validates :quantity, numericality: { only_integer: true, greater_than: 0}
end
