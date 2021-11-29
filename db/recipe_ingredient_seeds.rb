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

    # recipe 4 - Turbot with Artichokes, Chorizo, White Wine and Olive Oil
    RecipeIngredient.create!(
      recipe_id: 4,
      ingredient_id: 13,
      ingredient_amount: 200
    )

    RecipeIngredient.create!(
      recipe_id: 4,
      ingredient_id: 14,
      ingredient_amount: 75
    )

    RecipeIngredient.create!(
      recipe_id: 4,
      ingredient_id: 15,
      ingredient_amount: 125
    )

    RecipeIngredient.create!(
      recipe_id: 4,
      ingredient_id: 16,
      ingredient_amount: 30
    )

    # recipe 5 - Grilled Tiger Prawns
    RecipeIngredient.create!(
      recipe_id: 5,
      ingredient_id: 11,
      ingredient_amount: 150
    )

    # recipe 6 - Salt Baked Fillet of Line Caught Sea Bass with Artichokes and Tomatoes
    RecipeIngredient.create!(
      recipe_id: 6,
      ingredient_id: 17,
      ingredient_amount: 500
    )

    RecipeIngredient.create!(
      recipe_id: 6,
      ingredient_id: 18,
      ingredient_amount: 200
    )

    RecipeIngredient.create!(
      recipe_id: 6,
      ingredient_id: 19,
      ingredient_amount: 125
    )

    RecipeIngredient.create!(
      recipe_id: 6,
      ingredient_id: 20,
      ingredient_amount: 200
    )


  puts "created #{RecipeIngredient.count} RecipeIngredients."
end
