def build_recipes
  puts "deleting previously created recipes"
  Recipe.delete_all
  puts "#{Recipe.count} ingredients stored"
  puts "======"
  puts "starting to create recipes"

  # dependent on test-user with user_id = 1 to exist!

  10.times do
    Recipe.create!(
      name: Faker::Food.dish,
      method: Faker::Food.description,
      user_id: 1
    )
  end

  5.times do
        Recipe.create!(
      name: Faker::Food.sushi,
      method: Faker::Food.description,
      user_id: 1
    )
  end

  puts "created #{Recipe.count} recipes."
end
