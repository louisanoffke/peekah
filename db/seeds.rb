# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require_relative 'allergen_seeds'
require_relative 'ingredient_seeds'
require_relative 'recipe_seeds'
require_relative 'restaurant_seeds'

# need to delete users to re-create test-user prior to seeding recipes
User.delete_all

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

puts ">> creating TEST USER"
user = User.create!(
  email: "user@pka.ai",
  password: "123456",
  restaurant_id: 10
)
puts "~~> test user created with ID = #{user.id} and email #{user.email}"

puts ">> Recipes"
build_recipes
puts "_______________"


puts ">> Finished seeeding!"
