# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require_relative 'allergen_seeds'
require_relative 'ingredient_seeds'

puts "going to build allergens"
build_allergens

puts "going to build ingredients"
build_ingredients

puts "finished seeeding"
