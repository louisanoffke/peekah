class RecipesController < ApplicationController
  before_action :recipe_id, only: %i[show destroy edit update]
  # before_action

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @dish = Dish.new
    @recipe.user = current_user
    if @recipe.save
      redirect_to recipe_recipe_ingredients_path(@recipe), notice: 'Recipe was successfully created.'
    else
      render :new
    end
  end

  def index
    @recipes = Recipe.where(user: current_user)
    @assigned_recipes = Recipe.joins(:dishes).where(user: current_user) # Faster results
    @dishes_recipes = @assigned_recipes.map do |recipe|
        Dish.joins(:recipe).where(recipe: recipe)
    end
    # @assigned_recipes = @recipes.reject { |r| r.dishes.empty? }
    @unassigned_recipes = @recipes.select { |r| r.dishes.empty? }
  end

  def show; end

  def edit; end

  def update
    @recipe.update(recipe_params)
    if @recipe.save
      redirect_to recipe_path(@recipe), notice: 'Recipe was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path, notice: 'Recipe was successfully removed.'
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :method)
  end

  def recipe_id
    @recipe = Recipe.find(params[:id])
  end
end
