class ShoppingListsController < ApplicationController
    before_action :set_shopping_list, only: %i[show edit update destroy]

    def index
        @foods = Food.includes(:recipe_foods).where(recipe_foods: { food_id: nil }) 
        @recipe_foods = []
        
        @foods.each do |recipe_food|
            food = recipe_food
            food.quantity = Random.rand(1..30).to_i 
            @recipe_foods << food
        end

        @total_price = 0
        @recipe_foods.each { |item| @total_price += item.quantity * item.price }
    end
end
