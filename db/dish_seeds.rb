def build_dishes
  puts "deleting previously created dishes"
  Dish.delete_all
  puts "currently #{Dish.count} dishes stored"
  puts "======"
  puts "starting to create dishes"
  puts "found #{Recipe.count} recipes"

  Dish.create!(
    price:
    is_available: true,
    description:
    restaurant_id:
    recipe_id:
    img_url:
  )

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

  puts "created #{Dish.count} dishes"
end
