def build_recipes
  puts "deleting previously created recipes"
  Recipe.delete_all
  puts "#{Recipe.count} ingredients stored"
  puts "======"
  puts "starting to create recipes"

  # dependent on test-user with user_id = 1 to exist!

  Recipe.create!(
    name: "GNOCCHI Á LA TOMATE FRAÎCHE",
    method: "Gnocchi with Cherry Tomato Garlic and Parmesan",
    user_id: 1
  )

  Recipe.create!(
    name: "PAPPARDELLE FRAICHES, SAUCE BOLOGNAISE DE VEAU",
    method: "Homemade Pappardelle, Veal Ragú",
    user_id: 1
  )

  Recipe.create!(
    name: "PÂTES FRAÎCHES AUX CALAMARS, CREVETTES ET CHORIZO",
    method: "Homemade Pasta with Squid, Prawns and Chorizo",
    user_id: 1
  )

  Recipe.create!(
    name: "TURBOT AUX ARTICHAUTS BARIGOULE",
    method: "Turbot with Artichokes, Chorizo, White Wine and Olive Oil",
    user_id: 1
  )

  Recipe.create!(
    name: "GROSSES CREVETTES GRILLÉES",
    method: "Grilled Tiger Prawns",
    user_id: 1
  )

  Recipe.create!(
    name: "LOUP DE MER EN CROÛTE DE SEL",
    method: "Salt Baked Fillet of Line Caught Sea Bass with Artichokes and Tomatoes",
    user_id: 1
  )

  Recipe.create!(
    name: "DAURADE AU CITRON",
    method: "Whole Sea Bream Baked en Papillote with Lemon, Herbs and Olive Oil",
    user_id: 1
  )

  Recipe.create!(
    name: "SÔLE POÊLÉE AU GRAIN DE MOUTARDE",
    method: "Pan Fried Dover Sole with a Grainy Mustard Dressing",
    user_id: 1
  )

  Recipe.create!(
    name: "ENTRECÔTES GRILLÉE",
    method: "Grilled Rib Eye Steak 400gr",
    user_id: 1
  )

  Recipe.create!(
    name: "CÔTES DE VEAU GRILLÉE",
    method: "Grilled Veal Chop",
    user_id: 1
  )

  Recipe.create!(
    name: "CÔTELETTES D'AGNEAU VIVIENNE",
    method: "Grilled Lamb Cutlets with Smoked Aubergine",
    user_id: 1
  )

  Recipe.create!(
    name: "COQUELET AU CITRON CONFIT",
    method: "Roast Baby Chicken Marinated in Lemon",
    user_id: 1
  )

  Recipe.create!(
    name: "CANARD À L’ORANGE",
    method: "Slow Cooked Duck Legs with Orange Glaze",
    user_id: 1
  )

  Recipe.create!(
    name: "POULET FAÇON “LPM”*",
    method: "Whole Roast Black Leg Chicken *Please pre-order, subject to availability",
    user_id: 1
  )

  Recipe.create!(
    name: "CARRÉ D’ AGNEAU ENTIER*",
    method: "Whole Roast Rack of Lamb with Spiced Couscous* Please pre-order, subject to availability",
    user_id: 1
  )

  Recipe.create!(
    name: "CÔTE DE BOEUF*",
    method: "Rib of Beef, *Please pre-order, subject to availability",
    user_id: 1
  )

  Recipe.create!(
    name: "RATATOUILLE DE HAWAZEN",
    method: "Hot Mediterranean Vegetables with Chickpeas",
    user_id: 1
  )

  Recipe.create!(
    name: "BROCOLIS",
    method: "Sautéed Broccoli",
    user_id: 1
  )

  Recipe.create!(
    name: "HARICOTS VERTS",
    method: "Green Beans",
    user_id: 1
  )

  Recipe.create!(
    name: "POMMES DE TERRE GRATINÉES",
    method:"Baked Gratinated Potatoes",
    user_id: 1
  )

  Recipe.create!(
    name: "FRITES",
    method: "French Fried Potatoes",
    user_id: 1
  )

  Recipe.create!(
    name: "SALADE VERTE",
    method: "Mixed Leaf Salad",
    user_id: 1
  )

  Recipe.create!(
    name: "CAROTTE ROTIE",
    method: "Roasted Carrot, Caramelized Onion and Candied Walnut",
    user_id: 1
  )

  puts "created #{Recipe.count} recipes."
end
