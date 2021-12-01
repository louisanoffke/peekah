def build_ingredients
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

  Ingredient.create!(
    name: "Papardelle",
    calorie_content: 131,
    protein_content: 5,
    carb_content: 25,
    fat_content: 1.1
  )

  Ingredient.create!(
    name: "Veal",
    calorie_content: 196,
    protein_content: 25.6,
    carb_content: 0,
    fat_content: 9.7
  )

  Ingredient.create!(
    name: "Pasta",
    calorie_content: 131,
    protein_content: 5,
    carb_content: 25,
    fat_content: 1.1
  )

  Ingredient.create!(
    name: "Squid",
    calorie_content: 175,
    protein_content: 18,
    carb_content: 8,
    fat_content: 7
  )

  Ingredient.create!(
    name: "Prawns",
    calorie_content: 70,
    protein_content: 15,
    carb_content: 0.2,
    fat_content: 0.3
  )

  Ingredient.create!(
    name: "Chorizo",
    calorie_content: 455,
    protein_content: 24,
    carb_content: 1.9,
    fat_content: 38
  )

  Ingredient.create!(
    name: "Turbot",
    calorie_content: 122,
    protein_content: 21,
    carb_content: 0,
    fat_content: 3.8
  )

  Ingredient.create!(
    name: "Artichokes",
    calorie_content: 47,
    protein_content: 3.3,
    carb_content: 11,
    fat_content: 0.2
  )

  Ingredient.create!(
    name: "White Wine",
    calorie_content: 82,
    protein_content: 0.1,
    carb_content: 2.6,
    fat_content: 0
  )

  Ingredient.create!(
    name: "Olive Oil",
    calorie_content: 884,
    protein_content: 0,
    carb_content: 0,
    fat_content: 100
  )

  Ingredient.create!(
    name: "Salt",
    calorie_content: 0,
    protein_content: 0,
    carb_content: 0,
    fat_content: 0
  )

  Ingredient.create!(
    name: "Sea Bass",
    calorie_content: 124,
    protein_content: 24,
    carb_content: 0,
    fat_content: 2.6
  )

  Ingredient.create!(
    name: "Artichokes",
    calorie_content: 47,
    protein_content: 3.3,
    carb_content: 11,
    fat_content: 0.2
  )

  Ingredient.create!(
    name: "Tomatos",
    calorie_content: 18,
    protein_content: 0.9,
    carb_content: 3.9,
    fat_content: 0.2
  )

  Ingredient.create!(
    name: "Sea Bream",
    calorie_content: 143,
    protein_content: 23.4,
    carb_content: 1,
    fat_content: 5.3
  )

  Ingredient.create!(
    name: "Mixed Herbs",
    calorie_content: 0,
    protein_content: 0,
    carb_content: 0,
    fat_content: 0
  )

  Ingredient.create!(
    name: "Sole",
    calorie_content: 91,
    protein_content: 18.9,
    carb_content: 0,
    fat_content: 1.9
  )

  Ingredient.create!(
    name: "Grainy Mustard",
    calorie_content: 220,
    protein_content: 9.1,
    carb_content: 15.6,
    fat_content: 12
  )

  Ingredient.create!(
    name: "Rib Eye Steak",
    calorie_content: 271,
    protein_content: 25,
    carb_content: 0,
    fat_content: 19
  )

  Ingredient.create!(
    name: "Veal Chops",
    calorie_content: 260,
    protein_content: 30.8,
    carb_content: 0,
    fat_content: 14.3
  )

  Ingredient.create!(
    name: "Lamb Cutlets",
    calorie_content: 258,
    protein_content: 25.6,
    carb_content: 0,
    fat_content: 16.5
  )

  Ingredient.create!(
    name: "Aubergine",
    calorie_content: 25,
    protein_content: 1,
    carb_content: 6,
    fat_content: 0.2
  )

  Ingredient.create!(
    name: "Baby Chicken",
    calorie_content: 216,
    protein_content: 18,
    carb_content: 0,
    fat_content: 16
  )

  Ingredient.create!(
    name: "Lemon",
    calorie_content: 29,
    protein_content: 1.1,
    carb_content: 9,
    fat_content: 0.3
  )

  Ingredient.create!(
    name: "Duck Legs",
    calorie_content: 337,
    protein_content: 19,
    carb_content: 0,
    fat_content: 28
  )

  Ingredient.create!(
    name: "Oranges",
    calorie_content: 49,
    protein_content: 0,
    carb_content: 13,
    fat_content: 0.1
  )

  Ingredient.create!(
    name: "Whole Chicken",
    calorie_content: 216,
    protein_content: 18,
    carb_content: 0,
    fat_content: 16
  )

  Ingredient.create!(
    name: "Rack of Lamb",
    calorie_content: 258,
    protein_content: 25.6,
    carb_content: 0,
    fat_content: 16.5
  )

  Ingredient.create!(
    name: "Couscous",
    calorie_content: 164,
    protein_content: 6.3,
    carb_content: 31.3,
    fat_content: 0.9
  )

  Ingredient.create!(
    name: "Rib of Beef",
    calorie_content: 266,
    protein_content: 25.9,
    carb_content: 0,
    fat_content: 17.3
  )

  Ingredient.create!(
    name: "Chickpeas",
    calorie_content: 364,
    protein_content: 19,
    carb_content: 61,
    fat_content: 6
  )

  Ingredient.create!(
    name: "Broccoli",
    calorie_content: 35,
    protein_content: 2.1,
    carb_content: 7.2,
    fat_content: 0.4
  )

  Ingredient.create!(
    name: "Green Beans",
    calorie_content: 31,
    protein_content: 1.8 ,
    carb_content: 7.9,
    fat_content: 0.3
  )

  Ingredient.create!(
    name: "Potatoes",
    calorie_content: 93,
    protein_content: 2.5,
    carb_content: 21,
    fat_content: 0.1
  )

  Ingredient.create!(
    name: "Mixed Leafs",
    calorie_content: 15,
    protein_content: 0.2,
    carb_content: 4.2,
    fat_content: 0.2
  )

  Ingredient.create!(
    name: "Carrots",
    calorie_content: 52,
    protein_content: 1.2,
    carb_content: 12,
    fat_content: 0.3
  )

  Ingredient.create!(
    name: "Onions",
    calorie_content: 40,
    protein_content: 1.1,
    carb_content: 9.3,
    fat_content: 0.1
  )

  Ingredient.create!(
    name: "Walnuts",
    calorie_content: 654,
    protein_content: 15,
    carb_content: 14,
    fat_content: 65
  )

  Ingredient.create!(
    name: "Sugar",
    calorie_content: 387,
    protein_content: 0,
    carb_content: 100,
    fat_content: 0
  )

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

  # update_ingredient_calories
end

def update_ingredient_calories
  Ingredient.all.each do |ingredient|
    ingredient.total_calories
    puts "updated #{ingredient.name} to have #{ingredient.calorie_content} calories"
  end
end
