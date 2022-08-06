class Recipe < ApplicationRecord
  belongs_to :user, optional: true
  has_many :recipe_foods
  has_many :foods, through: :recipes_foods
  validates :name, presence: true
  validates :preparation_time, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :cooking_time, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :description, presence: true
  validates :public, inclusion: { in: [true, false] }
end
