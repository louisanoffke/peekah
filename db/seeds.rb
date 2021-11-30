require_relative 'allergen_seeds'
require_relative 'ingredient_seeds'
require_relative 'recipe_seeds'
require_relative 'recipe_ingredient_seeds'
require_relative 'restaurant_seeds'
require_relative 'dish_seeds'
require_relative 'user_seeds'

puts ">> Started seeeding!"

puts "_______________"

puts ">> Allergens"
build_allergens
puts "_______________"

puts ">> Ingredients"
build_ingredients
puts "_______________"

puts ">> Restaurants"
build_restaurants
puts "_______________"

puts ">> Users"
build_users
puts "_______________"

puts ">> Recipes"
build_recipes
puts "_______________"

puts ">> RecipeIngredients"
build_recipe_ingredients
puts "_______________"

puts ">> Dishes"
build_dishes
puts "_______________"

puts "<< Finished seeeding!"
