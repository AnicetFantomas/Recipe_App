class ShoppingListController < ApplicationController
    before_action :set_shopping_list, only: %i[show edit update destroy]

    def index
        @foods = Food.include(:redipes_foods).whre(recipe_foods: { food_id: nil })
        @recipe_foods = []
        
        @foods.each do |recipe_food|
            food = recipe_food
            food.quantity = Random.rand(1..30).to_i 
            @recipes_foods << food
        end

        @total_price = 0
        @recipes_foods.each { |item| @total_price += item.quantity * item.price }
    end
end
