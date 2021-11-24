def build_allergens
  puts "starting to create allergens"

  Allergen.create(
    name: "Celery",
    note: "This includes celery stalks, leaves, seeds and the root called celeriac. You can
  find celery in celery salt, salads, some meat products, soups and stock cubes."
  )

  Allergen.create(
    name: "Cereals containing gluten",
    note: "Wheat (such as spelt and Khorasan wheat/Kamut), rye, barley and oats is
  often found in foods containing flour, such as some types of baking powder,
  batter, breadcrumbs, bread, cakes, couscous, meat products, pasta, pastry,
  sauces, soups and fried foods which are dusted with flour."
  )

  Allergen.create(
    name: "Crustaceans",
    note: "Crabs, lobster, prawns and scampi are crustaceans. Shrimp paste, often used in
  Thai and south-east Asian curries or salads, is an ingredient to look out for."
  )

  Allergen.create(
    name: "Eggs",
    note: "Eggs are often found in cakes, some meat products, mayonnaise, mousses,
  pasta, quiche, sauces and pastries or foods brushed or glazed with egg."
  )

  Allergen.create(
    name: "Fish",
    note: "You will find this in some fish sauces, pizzas, relishes, salad dressings,
  stock cubes and Worcestershire sauce."
  )

  Allergen.create(
    name: "Lupin",
    note: "Yes, lupin is a flower, but it’s also found in flour! Lupin flour and seeds
  can be used in some types of bread, pastries and even in pasta."
  )

  Allergen.create(
    name: "Milk",
    note: "Milk is a common ingredient in butter, cheese, cream, milk powders and yoghurt. It can
  also be found in foods brushed or glazed with milk, and in powdered soups and sauces."
  )

  Allergen.create(
    name: "Molluscs",
    note: "These include mussels, land snails, squid and whelks, but can also be
  commonly found in oyster sauce or as an ingredient in fish stews."
  )

  Allergen.creaate(
    name: "Mustard",
    note: "Liquid mustard, mustard powder and mustard seeds fall into this category.
  This ingredient can also be found in breads, curries, marinades, meat products, salad dressings, sauces and soups."
  )

  Allergen.create(
    name: "Nuts",
    note: "Not to be mistaken with peanuts (which are actually a legume and grow underground),
  this ingredient refers to nuts which grow on trees, like cashew nuts, almonds and hazelnuts.
  You can find nuts in breads, biscuits, crackers, desserts, nut powders (often used in Asian
  curries), stir-fried dishes, ice cream, marzipan (almond paste), nut oils and sauces."
  )

  Allergen.create(
    name: "Peanuts",
    note: "Peanuts are actually a legume and grow underground, which is why it’s
  sometimes called a groundnut. Peanuts are often used as an ingredient in
  biscuits, cakes, curries, desserts, sauces (such as satay sauce), as well as in
  groundnut oil and peanut flour."
  )

  Allergen.create(
    name: "Sesame seeds",
    note: "These seeds can often be found in bread (sprinkled on hamburger
  buns for example), breadsticks, houmous, sesame oil and tahini.
  They are sometimes toasted and used in salads."
  )

  Allergen.create(
    name: "Soya",
    note: "Often found in bean curd, edamame beans, miso paste, textured soya protein,
  soya flour or tofu, soya is a staple ingredient in oriental food. It can also be found in desserts, ice cream, meat products, sauces and vegetarian products."
  )

  Allergen.create(
    name: "Sulphur dioxide or Sulphites",
    note: "Or Sulfites. This is an ingredient often used in dried fruit such as raisins, dried apricots
  and prunes. You might also find it in meat products, soft drinks, vegetables
  as well as in wine and beer. If you have asthma, you have a higher risk
  of developing a reaction to sulphur dioxide."
  )

  puts "created #{Allergen.count} allergens."
end
