def build_users
  puts "starting to create users"

  User.create!(
    name: "Alexander",
    email: "alex@pka.ai",
    password: "123456",
    restaurant_id: 4
  )

  User.create!(
    name: "Mirek",
    email: "mirek@pka.ai",
    password: "123456",
    restaurant_id: 2
  )

  User.create!(
    name: "Jeremy",
    email: "jeremy@pka.ai",
    password: "123456",
    restaurant_id: 3
  )

  puts "created #{User.count} users"
end
