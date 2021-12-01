def build_ingredients
  puts "deleting previously created ingredients"
  Ingredient.delete_all
  puts "#{Ingredient.count} ingredients stored"
  puts "======"
  puts "starting to create ingredients"

  Ingredient.create(
    name: "Halloumi",
    calorie_content: 400,
    protein_content: 30,
    is_allergen: false,
    contains_allergen: true
  )

  Ingredient.create!(
    name: "Skimmed Milk",
    calorie_content: 46.5,
    protein_content: 3.7,
    is_allergen: false,
    contains_allergen: false
  )

  Ingredient.create!(
    name: "Gnocchi",
    calorie_content: 164,
    protein_content: 3.5,
    carb_content: 36.1,
    fat_content: 0.5
  )

  Ingredient.create!(
    name: "Cherry Tomato",
    calorie_content: 18,
    protein_content: 1.1,
    carb_content: 3.6,
    fat_content: 0.8
  )

  Ingredient.create!(
    name: "Garlic",
    calorie_content: 149,
    protein_content: 6.4,
    carb_content: 33,
    fat_content: 0.5
  )

  Ingredient.create!(
    name: "Parmesan",
    calorie_content: 431,
    protein_content: 38,
    carb_content: 4.1,
    fat_content: 29
  )

  ingredients = %w[
    Pappardelle
    Veal
    Pasta
    Prawns
    Chorizo
    Turbot
    Artichokes
    White\ Wine
    Olive\ Oil
    Salt
    Sea\ Bass
    Artichokes
    Tomatoes
    Sea\ Bream
    Herbs
    Sole
    Grainy\ Mustard
    Rib\ Eye\ Steak
    Veal\ Chops
    Lamb\ Cutlets
    Aubergine
    Baby\ Chicken
    Lemon
    Duck\ Legs
    Orange
    Whole\ Chicken
    Rack\ of\ Lamb
    Couscous
    Rib\ of\ Beef
    Chickpeas
    Broccoli
    Green\ Beans
    Potatoes
    Mixed\ Leafs\Salad
    Carrot
    Onion
    Walnut
    Sugar
  ]

  ingredients.each do |ingredient|
    Ingredient.create!(
      name: ingredient,
      calorie_content: 0,
      protein_content: Faker::Number.decimal(l_digits: 2, r_digits: 2),
      carb_content: Faker::Number.decimal(l_digits: 2, r_digits: 2),
      fat_content: Faker::Number.decimal(l_digits: 2, r_digits: 2)
    )
  end


  Ingredient.create!(
    name: "Green Chillies",
    calorie_content: 40,
    carb_content: 9,
    protein_content: 1.9
  )

  Ingredient.create!(
    name: "Potato Starch",
    calorie_content: 357,
    carb_content: 83,
    protein_content: 7
  )

  Ingredient.create!(
    name: "Black Pepper",
    calorie_content: 318,
    carb_content: 62,
    protein_content: 10
  )

  Ingredient.create!(
    name: "Lemon Zest",
    calorie_content: 29,
    carb_content: 9,
    protein_content: 1.1
  )

  Ingredient.create!(
    name: "Ground Paprika",
    calorie_content: 300,
    carb_content: 60,
    protein_content: 10
  )

  Ingredient.create!(
    name: "Vegetable Oil",
    calorie_content: 812,
    protein_content: 0,
    carb_content: 0,
    fat_content: 92
  )


  Ingredient.create!(
    name: "Squid",
    calorie_content: 175,
    protein_content: 18,
    carb_content: 8,
    fat_content: 7
  )

  Ingredient.create!(
    name: "Baby Squid",
    calorie_content: 175,
    protein_content: 18,
    carb_content: 8,
    fat_content: 7
  )

  Ingredient.create!(
    name: "Maldon Salt",
    calorie_content: 0,
    protein_content: 0,
    carb_content: 0,
    fat_content: 0
  )

  puts "created #{Ingredient.count} ingredients"

  update_ingredient_calories
end

def update_ingredient_calories
  Ingredient.all.each do |ingredient|
    ingredient.total_calories
    puts "updated #{ingredient.name} to have #{ingredient.calorie_content} calories"
  end
end
