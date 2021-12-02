def build_dishes
  puts "starting to create dishes from the recipes"

  Dish.create!(
    price: 25,
    is_available: true,
    description: "Homemade Pappardelle, Veal Ragú",
    restaurant_id: 8, # Giorgio
    recipe_id: 2,
    img_url: "https://www.spendwithpennies.com/wp-content/uploads/2019/10/Bolognese-SpendWithPennies-6.jpg"
  )

  Dish.create!(
    price: 24,
    is_available: true,
    description: "Homemade Pasta with Squid, Prawns and Chorizo",
    restaurant_id: 13, # Pepe
    recipe_id: 3,
    img_url: "https://everydaygourmet.tv/static/public/Pasta-with_prawns__chorizo_crumb_and_dehydrated_olives.jpg"
  )


  Dish.create!(
    price: 27,
    is_available: true,
    description: "Turbot with Artichokes, Chorizo, White Wine and Olive Oil",
    restaurant_id: 3, # Arron
    recipe_id: 4,
    img_url: "https://www.prideofbritainhotels.com/wp-content/uploads/2021/02/Hambleton-Hall-Turbot-Feb-2021.jpg"
  )

  Dish.create!(
    price: 19,
    is_available: true,
    description: "Grilled Tiger Prawns",
    restaurant_id: 12, # Ben
    recipe_id: 5,
    img_url: "https://www.funfoodfrolic.com/wp-content/uploads/2017/08/Tandoori-Prawns-4.jpg"
  )

  Dish.create!(
    price: 36,
    is_available: true,
    description: "Salt Baked Fillet of Line Caught Sea Bass with Artichokes and Tomatoes",
    restaurant_id: 4, # Dish for Alex
    recipe_id: 6,
    img_url: "https://media-cdn.tripadvisor.com/media/photo-s/16/6d/a2/77/loup-de-mer-prepare-en.jpg"
  )


  # Recipe for Alex below - not dishes

  # Dish.create!(
  #   price: 27,
  #   is_available: true,
  #   description: "Whole Sea Bream Baked en Papillote with Lemon, Herbs and Olive Oil",
  #   restaurant_id: 4,
  #   recipe_id: 7,
  #   img_url: "https://www.find-a-seafood-recipe.com/images/Baked-whole-fish-recipe-250.jpg"
  # )

  # Dish.create!(
    #   price: 30,
    #   is_available: true,
    #   description: "Pan Fried Dover Sole with a Grainy Mustard Dressing",
    #   restaurant_id: 4,
    #   recipe_id: 8,
    #   img_url: "https://media-cdn.greatbritishchefs.com/media/wsxffhf2/img70109.jpg?mode=crop&width=768&height=512"
    # )

  Dish.create!(
    price: 31,
    is_available: true,
    description: "Grilled Rib Eye Steak 400gr",
    restaurant_id: 5, # Louisa
    recipe_id: 9,
    img_url: "http://thegoldenbun.com/wp-content/uploads/2013/04/relaisdelentrecote10-1.jpg"
  )

  Dish.create!(
    price: 22,
    is_available: true,
    description: "Roast Baby Chicken Marinated in Lemon",
    restaurant_id: 11, # Tom
    recipe_id: 12,
    img_url: "https://www.yummytummyaarthi.com/wp-content/uploads/2015/08/1-57.jpg"
  )

  Dish.create!(
    price: 28,
    is_available: true,
    description: "Slow Cooked Duck Legs with Orange Glaze",
    restaurant_id: 4, # Dish for Alex
    recipe_id: 13,
    img_url: "https://www.robynpuglia.com/wp-content/uploads/2016/05/Duck-leg-w-Orange-1500x1000.jpeg"
    )

  Dish.create!(
    price: 28,
    is_available: true,
    description: "Whole Roast Rack of Lamb with Spiced Couscous",
    restaurant_id: 7, # Yilun
    recipe_id: 15,
    img_url: "https://chefirvine.com/wp-content/uploads/2015/05/MoroccanLamb.jpg"
  )

  Dish.create!(
    price: 7,
    is_available: true,
    description: "Sautéed Broccoli",
    restaurant_id: 2, # Nico
    recipe_id: 18,
    img_url: "https://assets.epicurious.com/photos/57c5ab5ea5138f0d58edec1a/master/w_1280,c_limit/sauteed-broccoli-rabe.jpg"
  )
  Dish.create!(
    price: 6,
    is_available: true,
    description: "Roasted Carrot, Caramelized Onion and Candied Walnut",
    restaurant_id: 2, # Nico
    recipe_id: 23,
    img_url: "https://static01.nyt.com/images/2014/01/14/science/13recipehealth/13recipehealth-articleLarge.jpg"
  )




  Dish.create!(
    price: 6,
    is_available: true,
    description: "Mixed Leaf Salad",
    restaurant_id: 4, # Dish for Alex
    recipe_id: 22,
    img_url: "https://media-cdn.tripadvisor.com/media/photo-s/0d/bf/8b/e4/salade-verte.jpg"
  )

  # -------- Added by Nico
  Dish.create!(
    price: 9,
    is_available: true,
    description: "Baked Gratinated Potatoes",
    restaurant_id: 15, # Issy
    recipe_id: 22,
    img_url: "https://media-cdn.tripadvisor.com/media/photo-s/0d/bf/8b/e4/salade-verte.jpg"
  )

  Dish.create!(
    price: 6,
    is_available: true,
    description: "Mixed Leaf Salad",
    restaurant_id: 4, # Dish for Alex
    recipe_id: 22,
    img_url: "https://media-cdn.tripadvisor.com/media/photo-s/0d/bf/8b/e4/salade-verte.jpg"
        name: "Pommes de Terre Gratinées",
    method: "Baked Gratinated Potatoes",
    user_id:
  )

  puts "created #{Dish.count} dishes"
end
