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

    # recipe 2 - Homemade Pappardelle, Veal Ragú
    RecipeIngredient.create!(
      recipe_id: 2,
      ingredient_id: 7,
      ingredient_amount: 120
    )

    RecipeIngredient.create!(
      recipe_id: 2,
      ingredient_id: 8,
      ingredient_amount: 200
    )

    # recipe 3 - Pasta with Squid, Prawns and Chorizo
    RecipeIngredient.create!(
      recipe_id: 3,
      ingredient_id: 9,
      ingredient_amount: 120
    )

    RecipeIngredient.create!(
      recipe_id: 3,
      ingredient_id: 10,
      ingredient_amount: 50
    )

    RecipeIngredient.create!(
      recipe_id: 3,
      ingredient_id: 11,
      ingredient_amount: 60
    )

    RecipeIngredient.create!(
      recipe_id: 3,
      ingredient_id: 12,
      ingredient_amount: 45
    )


  puts "created #{RecipeIngredient.count} RecipeIngredients."
end
