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
  # recipe 1 - Gnocchi with Cherry Tomato Garlic and Parmesan
  RecipeIngredient.create!(
    recipe_id: 1,
    ingredient_id: 3,
    ingredient_amount: 120
  )

    RecipeIngredient.create!(
      recipe_id: 1,
      ingredient_id: 4,
      ingredient_amount: 150
    )

    RecipeIngredient.create!(
      recipe_id: 1,
      ingredient_id: 5,
      ingredient_amount: 2
    )

    RecipeIngredient.create!(
      recipe_id: 1,
      ingredient_id: 6,
      ingredient_amount: 25
    )

  puts "created #{RecipeIngredient.count} RecipeIngredients."
end
