def build_recipe_ingredients
  recipes = Recipe.all
  ingredients = Ingredients.all
  recipes.each.5.times do |recipe|
    ingredient = ingredients.sample
    RecipeIngredient.create!(
      recipe_id: recipe.id,
      ingredient_id: ingredients.id,
      ingredient_amount: (1..100).to_a.sample
    )
  end

  puts "created #{RecipeIngredient.count} RecipeIngredients."
end
