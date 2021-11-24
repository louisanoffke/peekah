class RecipeIngredientsController < ApplicationController
  def index
    @recipe_ingredients = RecipeIngredient.all
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_ingredient = RecipeIngredient.new
  end

  def new
    @recipe_ingredient = RecipeIngredient.new
  end

  def create
    @recipe_ingredient = RecipeIngredient.new(recipe_ingredient_params)
    @recipe_ingredient.recipe = Recipe.find(params[:recipe_id])
    @recipe_ingredient.ingredient = Ingredient.find(params[:recipe_ingredient][:ingredient_id])
    @recipe_ingredient.save

    redirect_to request.referrer
  end

  private

  def recipe_ingredient_params
    params.require(:recipe_ingredient).permit(:ingredient_amount)
  end

  # def recipe_ingredient_id
  #   @recipe_ingredient = RecipeIngredient.find(params[:id])
  # end
end
