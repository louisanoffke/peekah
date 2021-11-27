require 'open-uri'

def build_allergens
  puts "starting to create allergens"

  Allergen.create(
    name: "Celery",
    note: "This includes celery stalks, leaves, seeds and the root called celeriac. You can
  find celery in celery salt, salads, some meat products, soups and stock cubes.",
    icon_url: "https://cdn-icons.flaticon.com/png/512/381/premium/381001.png?token=exp=1638029439~hmac=725579f6c0c908453b8031941a163f0a"
  )

  Allergen.create(
    name: "Cereals containing gluten",
    note: "Wheat (such as spelt and Khorasan wheat/Kamut), rye, barley and oats is
  often found in foods containing flour, such as some types of baking powder,
  batter, breadcrumbs, bread, cakes, couscous, meat products, pasta, pastry,
  sauces, soups and fried foods which are dusted with flour.",
    icon_url: "https://cdn-icons-png.flaticon.com/128/3662/3662349.png"
  )

  Allergen.create(
    name: "Crustaceans",
    note: "Crabs, lobster, prawns and scampi are crustaceans. Shrimp paste, often used in
  Thai and south-east Asian curries or salads, is an ingredient to look out for.",
    icon_url: "https://cdn-icons-png.flaticon.com/128/3917/3917978.png"
  )

  Allergen.create(
    name: "Eggs",
    note: "Eggs are often found in cakes, some meat products, mayonnaise, mousses,
  pasta, quiche, sauces and pastries or foods brushed or glazed with egg.",
    icon_url: "https://cdn-icons.flaticon.com/png/512/2713/premium/2713457.png?token=exp=1638029624~hmac=4f12933a874feb8f1bcf1db5b3caa09f"
  )

  Allergen.create(
    name: "Fish",
    note: "You will find this in some fish sauces, pizzas, relishes, salad dressings,
  stock cubes and Worcestershire sauce.",
    icon_url: "https://cdn-icons-png.flaticon.com/128/1691/1691086.png"
  )

  Allergen.create(
    name: "Lupin",
    note: "Yes, lupin is a flower, but it’s also found in flour! Lupin flour and seeds
  can be used in some types of bread, pastries and even in pasta.",
    icon_url: "https://cdn-icons-png.flaticon.com/128/1496/1496997.png"
  )

  Allergen.create(
    name: "Milk",
    note: "Milk is a common ingredient in butter, cheese, cream, milk powders and yoghurt. It can
  also be found in foods brushed or glazed with milk, and in powdered soups and sauces.",
    icon_url: "https://cdn-icons-png.flaticon.com/128/684/684614.png"
  )

  Allergen.create(
    name: "Molluscs",
    note: "These include mussels, land snails, squid and whelks, but can also be
  commonly found in oyster sauce or as an ingredient in fish stews.",
    icon_url: "https://cdn-icons-png.flaticon.com/128/1015/1015518.png"
  )

  Allergen.create(
    name: "Mustard",
    note: "Liquid mustard, mustard powder and mustard seeds fall into this category.
  This ingredient can also be found in breads, curries, marinades, meat products, salad dressings, sauces and soups.",
    icon_url: "https://cdn-icons.flaticon.com/png/512/1811/premium/1811973.png?token=exp=1638029365~hmac=b310af53792e1a23d3bc06644e1657f5"
  )

  Allergen.create(
    name: "Nuts",
    note: "Not to be mistaken with peanuts (which are actually a legume and grow underground),
  this ingredient refers to nuts which grow on trees, like cashew nuts, almonds and hazelnuts.
  You can find nuts in breads, biscuits, crackers, desserts, nut powders (often used in Asian
  curries), stir-fried dishes, ice cream, marzipan (almond paste), nut oils and sauces.",
    icon_url: "https://cdn-icons.flaticon.com/png/512/282/premium/282421.png?token=exp=1638029838~hmac=1be011bc0a99d4d4c30e6aaf970c0101"
  )

  Allergen.create(
    name: "Peanuts",
    note: "Peanuts are actually a legume and grow underground, which is why it’s
  sometimes called a groundnut. Peanuts are often used as an ingredient in
  biscuits, cakes, curries, desserts, sauces (such as satay sauce), as well as in
  groundnut oil and peanut flour.",
    icon_url: "https://cdn-icons-png.flaticon.com/128/811/811663.png"
  )

  Allergen.create(
    name: "Sesame seeds",
    note: "These seeds can often be found in bread (sprinkled on hamburger
  buns for example), breadsticks, houmous, sesame oil and tahini.
  They are sometimes toasted and used in salads.",
    icon_url: "https://cdn-icons-png.flaticon.com/128/2771/2771191.png"
  )

  Allergen.create(
    name: "Soya",
    note: "Often found in bean curd, edamame beans, miso paste, textured soya protein,
  soya flour or tofu, soya is a staple ingredient in oriental food. It can also be found in desserts, ice cream, meat products, sauces and vegetarian products.",
    icon_url: "https://cdn-icons.flaticon.com/png/512/2591/premium/2591409.png?token=exp=1638029967~hmac=347ee91faadeb3a63fcb0a975137ac47"
  )

  Allergen.create(
    name: "Sulphur dioxide or Sulphites",
    note: "Or Sulfites. This is an ingredient often used in dried fruit such as raisins, dried apricots
  and prunes. You might also find it in meat products, soft drinks, vegetables
  as well as in wine and beer. If you have asthma, you have a higher risk
  of developing a reaction to sulphur dioxide.",
    icon_url: "https://cdn-icons-png.flaticon.com/128/2599/2599617.png"
  )

  puts "created #{Allergen.count} allergens."

  upload_allergen_icons
  puts "~~~> done with image upload"
end

def upload_allergen_icons
  puts "attaching allergen icons ~~~>"
  Allergens.all.each do |allergen|
    file = URI.open(allergen.icon_url)
    allergen.photo.attach(io: file, filename: "#{allergen.name}.png", content_type: "image/png")
  end
end
