def build_users
  puts "starting to create users"

  User.create!(
    name: "Marie",
    email: "marieo@pka.ai",
    password: "123456",
    restaurant_id: 1
  )

  User.create!(
    name: "Nico",
    email: "nico@pka.ai",
    password: "123456",
    restaurant_id: 2
  )

  User.create!(
    name: "Aaron",
    email: "jeremy@pka.ai",
    password: "123456",
    restaurant_id: 3
  )

  User.create!(
    name: "Alexander",
    email: "alex@pka.ai",
    password: "123456",
    restaurant_id: 4
  )

  User.create!(
    name: "Louisa",
    email: "louisa@pka.ai",
    password: "123456",
    restaurant_id: 5
  )

  User.create!(
    name: "Raeesa",
    email: "raeesa@pka.ai",
    password: "123456",
    restaurant_id: 6
  )


  User.create!(
    name: "Yilun",
    email: "yilun@pka.ai",
    password: "123456",
    restaurant_id: 7
  )


  User.create!(
    name: "Giorgio",
    email: "giorgio@pka.ai",
    password: "123456",
    restaurant_id: 8
  )


  User.create!(
    name: "Amin",
    email: "amin@pka.ai",
    password: "123456",
    restaurant_id: 9
  )


  User.create!(
    name: "Marco",
    email: "marco@pka.ai",
    password: "123456",
    restaurant_id: 10
  )


  User.create!(
    name: "Tom",
    email: "tom@pka.ai",
    password: "123456",
    restaurant_id: 11
  )

  User.create!(
    name: "Ben",
    email: "ben@pka.ai",
    password: "123456",
    restaurant_id: 12
  )

  User.create!(
    name: "Pepe",
    email: "pepe@pka.ai",
    password: "123456",
    restaurant_id: 13
  )

  User.create!(
    name: "Marva",
    email: "marva@pka.ai",
    password: "123456",
    restaurant_id: 14
  )

  User.create!(
    name: "Issy",
    email: "issy@pka.ai",
    password: "123456",
    restaurant_id: 15
  )

  puts "created #{User.count} users"
end
