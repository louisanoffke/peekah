def build_dishes
  recipes = Recipe.all
  restaurants = Restaurant.all
  puts "found #{Recipe.count} recipes"
  recipes.each do |r|
    Dish.create!(
      price: Faker::Number.decimal(l_digits: 2),
      is_available: true,
      description: r.method,
      restaurant_id: restaurants.sample.id,
      recipe_id: r.id
    )
  end
end
