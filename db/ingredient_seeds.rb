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
    is_allergen: true,
    contains_allergen: false
  )

  20.times do
    Ingredient.create!(
      name: Faker::Food.ingredient,
      calorie_content: Faker::Number.decimal(l_digits: 2, r_digits: 2),
      protein_content: Faker::Number.decimal(l_digits: 2, r_digits: 2),
      carb_content: Faker::Number.decimal(l_digits: 2, r_digits: 2),
      fat_content: Faker::Number.decimal(l_digits: 2, r_digits: 2)
    )
  end

  puts "starting to create fruits"

  10.times do
    Ingredient.create!(
      name: Faker::Food.fruits,
      calorie_content: Faker::Number.decimal(l_digits: 2, r_digits: 2),
      protein_content: (0..14).to_a.sample,
      carb_content: Faker::Number.decimal(l_digits: 2),
      fat_content: (0..8).to_a.sample
    )
  end

  puts "starting to create vegetables"

  10.times do
    Ingredient.create!(
      name: Faker::Food.vegetables,
      calorie_content: Faker::Number.decimal(l_digits: 2, r_digits: 2),
      protein_content: (0..23).to_a.sample,
      carb_content: Faker::Number.decimal(l_digits: 2),
      fat_content: (0..17).to_a.sample
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
