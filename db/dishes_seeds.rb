def build_dishes
  recipes = Recipe.all
  recipes.each do |r|
    Dish.create!(
      price:
    )
  end
end
