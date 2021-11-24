def build_ingredients
  puts "starting to create ingredients"

  Ingredient.create(
    name: "Halloumi",
    calorie_content: 200,
    protein_content: 20,
    is_allergen: true
  )
end
