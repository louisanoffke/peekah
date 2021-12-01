require 'open-uri'

def build_allergens
  puts "starting to create allergens"

  Allergen.create(
    name: "Celery",
    note: "This includes celery stalks, leaves, seeds and the root called celeriac. You can
  find celery in celery salt, salads, some meat products, soups and stock cubes.",
    icon_url: "https://cdn-icons-png.flaticon.com/64/1581/1581855.png"
  )

  Allergen.create(
    name: "Crustaceans",
    note: "Crabs, lobster, prawns and scampi are crustaceans. Shrimp paste, often used in
  Thai and south-east Asian curries or salads, is an ingredient to look out for.",
    icon_url: "https://cdn-icons-png.flaticon.com/64/3917/3917978.png"
  )

  Allergen.create(
    name: "Eggs",
    note: "Eggs are often found in cakes, some meat products, mayonnaise, mousses,
  pasta, quiche, sauces and pastries or foods brushed or glazed with egg.",
    icon_url: "https://cdn-icons-png.flaticon.com/64/702/702559.png"
  )

  Allergen.create(
    name: "Fish",
    note: "You will find this in some fish sauces, pizzas, relishes, salad dressings,
  stock cubes and Worcestershire sauce. E.g. Sole, Sea Bass, Turbot, Sea Bream.",
    icon_url: "https://cdn-icons-png.flaticon.com/64/1691/1691086.png"
  )

  Allergen.create(
    name: "Gluten",
    note: "Wheat (such as spelt and Khorasan wheat/Kamut), rye, barley and oats is
  often found in foods containing flour, such as baking powder,
  batter, breadcrumbs, bread, cakes, couscous, Gnocchi, Papardelle, meat products, pasta, pastry,
  sauces, soups and fried foods which are dusted with flour.",
    icon_url: "https://cdn-icons-png.flaticon.com/64/3662/3662349.png"
  )

  Allergen.create(
    name: "Lupin",
    note: "Yes, lupin is a flower, but it’s also found in flour! Lupin flour and seeds can sometimes be used in some bread, pastries and even in pasta.",
    icon_url: "https://cdn-icons-png.flaticon.com/64/1496/1496997.png"
  )

  Allergen.create(
    name: "Meat",
    note: "Beef, Veal, Veal Chops, Chorizo, Lamb, Chicken, Baby Chicken, Rib Eye Steak",
    icon_url: "https://cdn-icons-png.flaticon.com/64/3076/3076067.png"
  )

  Allergen.create(
    name: "Milk",
    note: "Milk is a common ingredient in butter, cheese, eg Halloumi, Parmesan, cream, milk powders and yoghurt. It can
  also be found in foods brushed or glazed with milk, and in powdered soups and sauces.",
    icon_url: "https://cdn-icons-png.flaticon.com/64/684/684614.png"
  )

  Allergen.create(
    name: "Molluscs",
    note: "These include mussels, land snails, squid and whelks, but can also be
  commonly found in oyster sauce or as an ingredient in fish stews.",
    icon_url: "https://cdn-icons-png.flaticon.com/64/1015/1015518.png"
  )

  Allergen.create(
    name: "Mustard",
    note: "Liquid mustard, mustard powder and mustard seeds fall into this category.
  This ingredient can also be found in breads, curries, marinades, meat products, salad dressings, sauces and soups.",
    icon_url: "https://cdn-icons-png.flaticon.com/64/737/737014.png"
  )

  Allergen.create(
    name: "Nuts",
    note: "Not to be mistaken with peanuts (which are actually a legume and grow underground),
  this ingredient refers to nuts which grow on trees, like cashew nuts, Walnuts, almonds and hazelnuts.
  You can find nuts in breads, biscuits, crackers, desserts, nut powders (often used in Asian
  curries), stir-fried dishes, ice cream, marzipan (almond paste), nut oils and sauces.",
    icon_url: "https://cdn-icons-png.flaticon.com/64/1167/1167712.png"
  )

  Allergen.create(
    name: "Peanuts",
    note: "Peanuts are actually a legume and grow underground, which is why it’s
  sometimes called a groundnut. Peanuts are often used as an ingredient in
  biscuits, cakes, curries, desserts, sauces (such as satay sauce), as well as in
  groundnut oil and peanut flour.",
    icon_url: "https://cdn-icons-png.flaticon.com/64/811/811663.png"
  )

  Allergen.create(
    name: "Sesame seeds",
    note: "These seeds can often be found in bread (sprinkled on hamburger
  buns for example), breadsticks, houmous, sesame oil and tahini.
  They are sometimes toasted and used in salads.",
    icon_url: "https://cdn-icons-png.flaticon.com/64/2771/2771191.png"
  )

  Allergen.create(
    name: "Soya",
    note: "Often found in bean curd, edamame beans, miso paste, textured soya protein,
  soya flour or tofu, soya is a staple ingredient in oriental food. It can also be found in desserts, ice cream, meat products, sauces and vegetarian products.",
    icon_url: "https://cdn-icons-png.flaticon.com/64/1581/1581841.png"
  )

  Allergen.create(
    name: "Sulphites",
    note: "Sulphur dioxide or Sulfites. This is an ingredient often used in dried fruit such as raisins, dried apricots
  and prunes. You might also find it in meat products, soft drinks, vegetables
  as well as in wine and beer. If you have asthma, you have a higher risk
  of developing a reaction to sulphur dioxide.",
    icon_url: "https://cdn-icons-png.flaticon.com/64/2599/2599617.png"
  )

  puts "created #{Allergen.count} allergens."

  # upload_allergen_icons
  # puts "~~~> done with image upload"
end

def upload_allergen_icons
  puts "attaching allergen icons ~~~>"
  Allergen.all.each do |allergen|
    if allergen.icon_url != ""
      file = URI.open(allergen.icon_url)
      puts "opened image for #{allergen.name}"
      allergen.photo.attach(io: file, filename: "#{allergen.name}.png", content_type: "image/png")
    end
  end
end
