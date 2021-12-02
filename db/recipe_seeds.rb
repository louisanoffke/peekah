def build_recipes
  puts "starting to create recipes"

  Recipe.create!(
    name: "Gnocchi á la Tomate Fraîche",
    method: "Gnocchi with Cherry Tomato Garlic and Parmesan",
    user_id: 6 # Raeesa
  )

  Recipe.create!(
    name: "Pappardelle Fraiches,\nSauce Bolognaise de Veau",
    method: "Homemade Pappardelle, Veal Ragú",
    user_id: 8 # Giorgio
  )

  Recipe.create!(
    name: "Pâtes Fraîches aux Calamars,\nCrevettes et Chorizo",
    method: "Homemade Pasta with Squid, Prawns and Chorizo",
    user_id: 13 # Pepe
  )

  Recipe.create!(
    name: "Turbot aux Artichauts Barigoule",
    method: "Turbot with Artichokes, Chorizo, White Wine and Olive Oil",
    user_id: 3 # Aaron
  )

  Recipe.create!(
    name: "Grosses Crevettes Grillées",
    method: "Grilled Tiger Prawns",
    user_id: 12 # Ben
  )

  Recipe.create!(
    name: "Loup de Mer en Croûte de Sel",
    method: "Salt Baked Fillet of Line Caught Sea Bass with Artichokes and Tomatoes",
    user_id: 4 # Dish for Alex
  )

  Recipe.create!(
    name: "Daurade au Citron",
    method: "Whole Sea Bream Baked en Papillote with Lemon, Herbs and Olive Oil",
    user_id: 4 # Recipe for Alex
  )

  Recipe.create!(
    name: "Sôle Poêlée au Grain de Moutarde",
    method: "Pan Fried Dover Sole with a Grainy Mustard Dressing",
    user_id: 4 # Recipe for Alex
  )

  Recipe.create!(
    name: "Entrecôtes Grillée",
    method: "Grilled Rib Eye Steak 400gr",
    user_id: 5 # Louisa
  )

  Recipe.create!(
    name: "Côtes de Veau Grillée",
    method: "Grilled Veal Chop",
    user_id: 13 # Pepe
  )

  Recipe.create!(
    name: "Côtelettes d'Agneau Vivienne",
    method: "Grilled Lamb Cutlets with Smoked Aubergine",
    user_id: 3 # Aaron
  )

  Recipe.create!(
    name: "Coquelet au Citron Confit",
    method: "Roast Baby Chicken Marinated in Lemon",
    user_id: 11 # Tom
  )

  Recipe.create!(
    name: "Canard à l’Orange",
    method: "Slow Cooked Duck Legs with Orange Glaze",
    user_id: 4 # Dish for Alex
  )

  Recipe.create!(
    name: "Poulet Façon “LPM”",
    method: "Whole Roast Black Leg Chicken",
    user_id: 10 # Marco
  )

  Recipe.create!(
    name: "Carré d’Agneau Entier",
    method: "Whole Roast Rack of Lamb with Spiced Couscous",
    user_id: 7 # Yilun
  )

  Recipe.create!(
    name: "Côte de boeuf",
    method: "Rib of Beef",
    user_id: 8 # Giorgio
  )

  Recipe.create!(
    name: "Ratatouille de Hawazen",
    method: "Hot Mediterranean Vegetables with Chickpeas",
    user_id: 1 # Marie
  )

  Recipe.create!(
    name: "Broccoli",
    method: "Sautéed Broccoli",
    user_id: 2 # Nico
  )

  Recipe.create!(
    name: "Haricots Verts",
    method: "Green Beans",
    user_id: 14 # Marva
  )

  Recipe.create!(
    name: "Pommes de Terre Gratinées",
    method: "Baked Gratinated Potatoes",
    user_id: 15 # Issy
  )

  Recipe.create!(
    name: "Frites",
    method: "French Fried Potatoes",
    user_id: 9 # Amin
  )

  Recipe.create!(
    name: "Salade Verte",
    method: "Mixed Leaf Salad",
    user_id: 4 # Dish for Alex
  )

  Recipe.create!(
    name: "Carotte rotie",
    method: "Roasted Carrot, Caramelized Onion and Candied Walnut",
    user_id: 2 # Nico
  )

  puts "created #{Recipe.count} recipes"
end
