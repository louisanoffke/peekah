def build_ingredients
  puts "starting to create ingredients"

  Ingredient.create(
    name: "Halloumi",
    calorie_content: 99,
    protein_content: 20,
    is_allergen: false,
    contains_allergen: true
  )

  Ingredient.create!(
    name: "Skimmed Milk",
    calorie_content: 46.5,
    protein_content: 3.7,
    is_allergen: true,
    contains_allergen: false
  )


end
