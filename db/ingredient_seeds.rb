def build_ingredients
  puts "deleting previously created ingredients"
  Ingredient.delete_all
  puts "#{Ingredient.count} ingredients stored"
  puts "======"
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
    is_allergen: false,
    contains_allergen: false
  )

  ingredients = %w[
    Gnocchi
    Cherry\ Tomato
    Garlic
    Parmesan
    Pappardelle
    Veal
    Pasta
    Squid
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
      calorie_content: Faker::Number.decimal(l_digits: 2, r_digits: 2),
      protein_content: Faker::Number.decimal(l_digits: 2, r_digits: 2),
      carb_content: Faker::Number.decimal(l_digits: 2, r_digits: 2),
      fat_content: Faker::Number.decimal(l_digits: 2, r_digits: 2)
    )
  end

  puts "created #{Ingredient.count} ingredients"

  update_ingredient_calories
end

def update_ingredient_calories
  Ingredient.all.each do |ingredient|
    ingredient.total_calories
    puts "updated #{ingredient.name} to have #{ingredient.calorie_content} calories"
  end
end
