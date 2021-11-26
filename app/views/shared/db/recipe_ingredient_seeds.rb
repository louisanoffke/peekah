def build_recipe_ingredients
  recipes = Recipe.all
  ingredients = Ingredient.all
  5.times do
    recipes.each do |recipe|
      ingredient = ingredients.sample
      RecipeIngredient.create!(
        recipe_id: recipe.id,
        ingredient_id: ingredient.id,
        ingredient_amount: (1..100).to_a.sample
      )
    end
  end
  puts "created #{RecipeIngredient.count} RecipeIngredients."
end
