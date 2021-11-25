def build_restaurants
  puts "deleting previously created restaurants"
  Restaurant.delete_all

  puts "starting to create restaurants"

  Restaurant.create!(
    name: "Lucky Cat - Kori Kitchen Table",
    address: "10 Grovesnor Square  London,  W1K 6JP",
    description: "TThis Japanese inspired Chef's Table is designed to be booked exclusively for up to ten guests. Chefs will guide your group through each course, finishing dishes in front of you.",
    opentable_link: "https://www.opentable.co.uk/r/lucky-cat-kori-kitchen-table-london"
  )

  Restaurant.create(
    name: "Bocconcino",
    address: "19 Berkeley Street London, W1J 8ED",
    description: "Bocconcino is an Italian fine dining restaurant in London, nestled in the heart of Mayfair. Step away from the bustle of Berkeley Street and into a stunning space that will transport you and your guests to the gorgeous climes of Italy, featuring authentic Italian cuisine with a contemporary flair, first class service, expertly produced cocktails, and a rich selection of wines. The restaurant benefits from a lively ambiance with DJ nights and a weekend bottomless brunch.
Their Chefs use only high quality ingredients imported straight from the diverse regions Italy, offering an excellent range of antipasti, hand-made pasta and wood-oven pizza. Larger dishes include an array of fresh seafood, catch of the day beautifully presented on their rich fish display.
The first Bocconcino restaurant was opened in a beautiful seaside Forte dei Marmi, and Bocconcino has since expanded to London and has been offering delicious food and first-class service in a stylish location in Central London.",
    opentable_link: "https://www.opentable.co.uk/bocconcino",
    deliveroo_link: "https://deliveroo.co.uk/menu/london/mayfair/bocconcino-mayfair"
  )

  Restaurant.create(
    name: "Bombay Bustle",
    address: "29 Maddox Street London, W1S 2PA",
    description: "Bombay Bustle is inspired by the tiffin tin carriers, the institution of men who use Mumbai’s famed local railway to deliver home cooked meals across the city. The Maddox Street restaurant pays homage to the culture and people, whose expanse of origins from across India have influenced its culinary history.
The menu sees recreations of some of the city’s most loved dishes alongside family recipes. Seasonal delights, inspired by Mumbai and the surrounding areas, include Bambaiya Ragda topped with dry peas and honey yogurt , Pickling spice Lamb chop , Prawn tawa Pulao along with Kerala home style Vegetable Istew with Appam and a Jalebi Cheesecake with Bombay Cutting Chai.",
    opentable_link: "https://www.opentable.co.uk/r/bombay-bustle-london",
    deliveroo_link: "https://deliveroo.co.uk/menu/london/mayfair/smd-concepts-ltd"
  )

  Restaurant.create(
    name: "Lucky Cat by Gordon Ramsay",
    address: "10 Grosvenor Square London, W1K 6JP",
    description: "Located in London's Mayfair, Lucky Cat by Gordon Ramsay is an Asian open kitchen and late night lounge inspired by the drinking clubs of 1930s Tokyo and the Far East.
Dine on Asian inspired small plates, Robata grilled dishes, sushi and sashimi that have been exquisitely crafted in the open kitchen and signature raw bar. Gordon and his Executive Head Chef, Ben Orpwood, have designed each dish to be shared at the centre of the table.",
    opentable_link: "https://www.opentable.co.uk/r/lucky-cat-by-gordon-ramsay-london"
  )

  Restaurant.create(
    name: "Galvin at Windows",
    address: "London Hilton 22 Park Lane London, W1K 1BE",
    description: "An irresistible offer to enrapture the palate and senses - welcome to Galvin at Windows, a multiple-award-winning London rooftop dining destination with breathtaking 360-degree panoramas. Savour the most gratifying highlights of seasonal gastronomy, expertly prepared by Head Chef Marc Hardiman and his trusted professional team. This exquisite London restaurant graces the highest point of London Hilton on Park Lane providing the most exquisite backdrop for fine dining and all special occasions.",
    opentable_link: "https://www.opentable.co.uk/galvin-at-windows"
  )

  Restaurant.create(
    name: "Hard Rock Cafe - London",
    address: "150 Old Park Lane London, ENG W1K 1QZ",
    description: "Hard Rock Cafe is a global phenomenon with 185 cafes that are visited by nearly 80 million guests each year. The first Hard Rock Cafe opened on June 14, 1971, in London, England, and from there the brand has expanded to major cities and exotic locations around the world.",
    opentable_link: "https://www.opentable.co.uk/hard-rock-cafe-london"
  )

  Restaurant.create(
    name: "Afternoon Tea at The Chesterfield Mayfair",
    address: "35 Charles Street London, W1J 5EB",
    description: "Afternoon Tea is quite an event at The Chesterfield Mayfair - regularly commended at the Afternoon Tea Awards. A member of The Tea Guild, a prestigious and unique organisation that represents outlets dedicated to brewing and serving tea to the high standards desired by the United Kingdom Tea Council.
Recognised for our outstanding quality and consistently high standards of tea service we pay suitable respect to its ritual while offering some exciting variations on the original. We take tremendous pleasure in serving a menu complete with homemade cakes, scones and pastries prepared by our chef pâtissier, in the heart of Mayfair.
The Chesterfield Mayfair welcomes group enquiries for afternoon tea parties. With a number of private rooms available, The Chesterfield Mayfair makes an excellent location to celebrate birthdays, baby showers, hen parties, engagements and children's parties. Our events team would be happy to discuss your requirements.",
    opentable_link: "https://www.opentable.co.uk/r/afternoon-tea-at-the-chesterfield-mayfair-london"
  )

  Restaurant.create(
    name: "Hakkasan Mayfair",
    address: "17 Bruton Street London, W1J 6QB",
    description: "This Michelin starred Chinese restaurant was designed by the famed Christian Liaigre, the intricate wooden lattice screens, carved out of dark English oak, invite discerning guests for a unique dining experience with contemporary cuisine. The menu has a strong Chinese ethnic identity with an ethos of Cantonese cooking.
Hakkasan and Lucy Choi London are partnering in celebration of London Fashion Week 2019.
Lucy Choi has created the Hakkasan Collection, three limited edition shoes inspired by Hakkasan, including the Mayfair, a red stiletto, and the Hanway Place, a black flat decorated with an embroidered tiger symbolising power, ferocity and beauty.
To coincide with the launch, the Hakkasan Collection menu at Hakkasan Hanway Place and Hakkasan Mayfair showcases signature dishes alongside an exclusive dessert served in a glossy black shoebox as well as a cocktail, the Choi Ling. Priced at £90 per person, the menu is available until Sunday 17th November.",
    opentable_link: "https://www.opentable.co.uk/hakkasan-mayfair"
  )

  Restaurant.create(
    name: "MADHU’S of Mayfair",
    address: "The Dilly Hotel 21 Piccadilly London, Greater London W1J 0BH",
    description: "Synonymous with quality, dedication, creativity and flare, the Madhu's brand boasts more than 40 years in the business.
Enjoy the vibrant flavours of India with our Kenyan twist in our opulent Grade II listed Oak Room. Madhu’s enjoys an unrivalled reputation for the highest standards in Indian fine dining.
Enriched with history, our recipes have been handed down 4 generations which not only adds to our authenticity but coupled with our must try signature dishes; makes us a firm favourite and the new talk of the town!
Our cosy Lounge/Bar room is the ideal setting for those pre/post meal drinks. Between Thursday-Saturday (10pm onwards) the atmosphere heightens as our bar magicians become the life and soul of the bar.
Please note: The restaurant does adhere to a dress code policy. Elegant/Smart casual (No sportswear or hats are permitted)",
    opentable_link: "https://www.opentable.co.uk/r/madhus-at-the-dilly-london"
  )

  Restaurant.create(
    name: "Bond Street Kitchen",
    address: "63 New Bond Street  London,  W1S 1RQ",
    description: "Synonymous with refined elegance and elevated service, Fenwick of Bond Street proudly presents Bond Street Kitchen.
The perfect retreat from busy Mayfair, Bond Street Kitchen provides a relaxed and vibrant atmosphere, perfect for any occasion. Situated on the second floor of Fenwick, Bond Street Kitchen is ideal for shoppers needing a respite from their fashion travels, or business people looking for a stylish destination for a meeting. Guests can choose from a delicious menu of brunch, lunch and afternoon tea.
Just as we at Fenwick of Bond Street carefully curate our edit, our chefs carefully source each ingredient to bring you a seasonal menu of modern British dishes, matched with a carefully chosen selection of wines. Offering a flavoursome, original and inspiring menu, Bond Street Kitchen provides beautifully executed cuisine in a casual dining setting.",
    opentable_link: "https://www.opentable.co.uk/r/bond-street-kitchen-london"
  )

  Restaurant.create(
    name: "Rüya London",
    address: "30 Upper Grosvenor Street London,   W1K 7PH",
    description: "This includes celery stalks, leaves, seeds and the root called celeriac. You can
  find celery in celery salt, salads, some meat products, soups and stock cubes.",
    opentable_link: "https://www.opentable.co.uk/r/ruya-london",
    deliveroo_link: "https://deliveroo.co.uk/menu/london/mayfair/restaurant-craft-ltd"
  )

  Restaurant.create(
    name: "Sexy Fish",
    address: "Berkeley Square Berkeley Square House London, ENG  W1J 6BR",
    description: "Sexy Fish is an Asian restaurant and bar located on the corner of Berkeley Square, Mayfair serving Japanese-inspired sushi, sashimi, seafood, fish and meat cooked on a Robata grill. The bar, which is open until late, holds the world’s biggest Japanese whisky collection, as well as offering a drinks menu featuring both classic and inventive cocktails.",
    opentable_link: "https://www.opentable.co.uk/sexy-fish"
  )

  Restaurant.create(
    name: "El Norte",
    address: "19 Dover St London, Greater London  W1S 4LU",
    description: "Bienvenidos a El Norte!
Spanish Restaurant & Bar located in Dover street, the heart of Mayfair. Bringing the most popular dishes from Spain with a modern twist. Signature dishes include truffle tortilla, creamy croquettes, Joselito Iberico Ham, premium Vaca rubia Gallega steak... and many more! The wine menu has a selection of Spanish awarded labels carefully selected to accompany our dishes.
A beautiful bar with irresistible Spanish crafted cocktails including a selection of home-made Sangrias with premium Spanish wine or champagne.",
    opentable_link: "https://www.opentable.co.uk/r/el-norte-london"
  )

  puts "created #{Restaurant.count} restaurants"
end
