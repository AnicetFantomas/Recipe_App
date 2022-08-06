class RecipeFoodsController < ApplicationController
  before_action :set_recipe_food, only: %i[show edit update destroy]

  # GET /recipe_foods or /recipe_foods.json
  def index
    @recipe_foods = RecipeFood.all
  end

  # GET /recipe_foods/1 or /recipe_foods/1.json
  def show; end

  # GET /recipe_foods/new
  def new
    @recipe_food = RecipeFood.new
    @recipe = Recipe.find(params[:recipe_id])
    @foods = Food.where(user_id: current_user.id)
  end

  # GET /recipe_foods/1/edit
  def edit; end

  # POST /recipe_foods or /recipe_foods.json
  def create
    @foods = Food.where(user_id: current_user.id)
    @food = Food.find(recipe_food_params['food'])
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = RecipeFood.new(quantity: recipes_food_params['quantity'].to_i, food: @food, recipe: @recipe)

    respond_to do |format|
      if @recipe_food.save
        format.html { redirect_to recipe_food_url(@recipe_food), notice: 'Recipe food was successfully created.' }
        format.json { render :show, status: :created, location: @recipe_food }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recipe_food.errors, status: :unprocessable_entity }
        endclass RecipesFoodsController < ApplicationController
        before_action :set_recipes_food, only: %i[show edit update destroy]

        # GET /recipes_foods or /recipes_foods.json
        def index
          @recipes_foods = RecipesFood.all
        end

        # GET /recipes_foods/1 or /recipes_foods/1.json
        def show; end

        # GET /recipes_foods/new
        def new
          @recipes_food = RecipesFood.new
          @recipe = Recipe.find(params[:recipe_id])
          @foods = Food.where(user_id: current_user.id)
        end

        # POST /recipes_foods or /recipes_foods.json
        def create
          @foods = Food.where(user_id: current_user.id)
          @food = Food.find(recipes_food_params['food'])
          @recipe = Recipe.find(params[:recipe_id])
          @recipes_food = RecipesFood.new(quantity: recipes_food_params['quantity'].to_i, food: @food, recipe: @recipe)

          respond_to do |format|
            if @recipes_food.save
              format.html { redirect_to recipes_path, notice: 'Recipes food was successfully created.' }
              format.json { render :show, status: :created, location: @recipes_foods }
            else
              format.html { render :new, status: :unprocessable_entity }
              format.json { render json: @recipes_food.errors, status: :unprocessable_entity }
            end
          end
        end

        # DELETE /recipes_foods/1 or /recipes_foods/1.json
        def destroy
          @recipes_food.destroy

          respond_to do |format|
            format.html { redirect_to recipesFoods_url, notice: 'Recipes food was successfully destroyed.' }
            format.json { head :no_content }
          end
        end

        private

        # Use callbacks to share common setup or constraints between actions.
        def set_recipes_food
          @recipes_food = RecipesFood.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def recipes_food_params
          params.require(:recipes_food).permit(:food, :quantity)
        end
      end
    end
  end

  # PATCH/PUT /recipe_foods/1 or /recipe_foods/1.json
  def update
    respond_to do |format|
      if @recipe_food.update(recipe_food_params)
        format.html { redirect_to recipe_food_url(@recipe_food), notice: 'Recipe food was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe_food }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recipe_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_foods/1 or /recipe_foods/1.json
  def destroy
    @recipe_food.destroy

    respond_to do |format|
      format.html { redirect_to recipe_foods_url, notice: 'Recipe food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_recipe_food
    @recipe_food = RecipeFood.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def recipe_food_params
    params.require(:recipes_food).permit(:quantity, :food)
  end
end
