require "open-uri"

puts "Creating Veggielite's users"
User.destroy_all
Shop.destroy_all
Product.destroy_all

user1 = User.create(
  email: "zuckerberg@gmail.com",
  first_name: 'Amina',
  last_name: 'Miller',
  phone_number: '+77077924000',
  address: 'Al Barsha 1',
  password: 'ilovemeta'
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142872/vegl/user/headshot-portrait-happy-indian-millennial-260nw-1529381102_hvilyd.webp')
user1.photo.attach(io: file, filename: 'suzy.jpg', content_type: 'image/jpg')
user1.save
p user1

user2 = User.create(
  email: "tabitha@gmail.com",
  first_name: 'Tabitha',
  last_name: 'Cavalho',
  phone_number: '0456787656',
  address: 'Al Qusais',
  password: "iloveveggielite"
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142872/vegl/user/headshot-picture-happy-caucasian-senior-260nw-1495419986_pylhj3.webp')
user2.photo.attach(io: file, filename: 'tabitha.jpg', content_type: 'image/jpg')
user2.save
p user2

user3 = User.create(
  email: "steven@gmail.com",
  first_name: 'Steven',
  last_name: 'Johnson',
  phone_number: '0509876768',
  address: 'Barsha Heights',
  password: "iamsteven"
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142872/vegl/user/head-shot-close-portrait-overjoyed-260nw-1537134881_hqfe66.webp')
user3.photo.attach(io: file, filename: 'steven.jpg', content_type: 'image/jpg')
user3.save
p user3

puts "Done with the users"
p "-" * 20
puts "Creating the shops"

shop1 = Shop.create(
  name: 'Carrefour',
  address: 'Dubai Festival City',
  phone_number: '80073232',
  email: 'help@carrefour.com'
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142900/vegl/shop/carrefour-uae-logo-promo-code-dubai-abu-dhabi-sharjah_ha8ai2.png')
shop1.photos.attach(io: file, filename: 'carrefour', content_type: 'image/jpg')
shop1.save
p shop1

shop2 = Shop.create(
  name: 'Organic & Real',
  address: 'Mohideen Paper Products Industry - Warehouse #46 - 46 16b Street - Al Quoz Industrial Area 4 - Dubai',
  phone_number: '00971588403164',
  email: 'care@organicandreal.com'
)
file = URI.open('https://res.cloudinary.com/diepahdjf/image/upload/v1637434062/store_653_xwqyhy.jpg')
shop2.photos.attach(io: file, filename: 'organic&real', content_type: 'image/jpg')
shop2.save
p shop2

shop3 = Shop.create(
  name: 'Bute Island',
  address: 'Isle of Bute',
  phone_number: '044583828575',
  email: 'help@buteisland.com'
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142901/vegl/shop/logo_c9pxay.png')
shop3.photos.attach(io: file, filename: 'buteisland', content_type: 'image/jpg')
shop3.save
p shop3

shop4 = Shop.create(
  name: "Spinney's",
  address: 'Dubai Mall',
  phone_number: '80073232',
  email: 'help@spinneys.com'
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142901/vegl/shop/spinneys-dubai_lhhmjj.jpg')
shop4.photos.attach(io: file, filename: 'spinneys', content_type: 'image/jpg')
shop4.save
p shop4

shop5 = Shop.create(
  name: "Lulu's Hypermarket",
  address: 'Barsha Heights',
  phone_number: '80073232',
  email: 'help@lulu.com'
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142900/vegl/shop/DAJEEJ-PHOTO-3-e1625561988700_p41bb4.jpg')
shop5.photos.attach(io: file, filename: 'lulus', content_type: 'image/jpg')
shop5.save
p shop5

shop6 = Shop.create(
  name: "Fresh Del Monte Produce Inc.",
  address: 'Street 14 & 17, Central Fruit and Vegetable Market Area, Awir',
  phone_number: '0097143333801',
  email: 'info-uae@freshdelmonte.com'
)
file = URI.open('https://res.cloudinary.com/diepahdjf/image/upload/v1637431459/1200px-Del_Monte_logo.svg_sjtzcb.png')
shop6.photos.attach(io: file, filename: 'delmonte', content_type: 'image/jpg')
shop6.save
p shop6

shop7 = Shop.create(
  name: "Union Coop",
  address: 'Dubai, Al Warqa-3 , the Tripoli Street',
  phone_number: '00971458008889',
  email: 'info@unioncoop.ae'
)
file = URI.open('https://res.cloudinary.com/diepahdjf/image/upload/v1637431532/FINAL-APPROVAL-UNION-COOP-LOGO_u7ad9b.png')
shop7.photos.attach(io: file, filename: 'unioncoop', content_type: 'image/jpg')
shop7.save
p shop7

shop8 = Shop.create(
  name: "QualityFood",
  address: 'Street 14 & 17, Central Fruit and Vegetable Market Area, Awir Dubai',
  phone_number: '00971524353400',
  email: 'customer.service@qualityfood.ae'
)
file = URI.open('https://s3-eu-west-1.amazonaws.com/tpd/logos/5a6a60381ffc8700012341e1/0x0.png')
shop8.photos.attach(io: file, filename: 'qualityfood', content_type: 'image/jpg')
shop8.save
p shop8

shop9 = Shop.create(
  name: "Be Vegan",
  address: 'Fahidi 7 - Al Esbij St - Al Fahidi - Dubai',
  phone_number: '00971586975997',
  email: 'hello@bevegan.ae'
)
file = URI.open('https://res.cloudinary.com/diepahdjf/image/upload/v1637433454/bevegan-new-logo_105x_2x_bgw53b.png')
shop9.photos.attach(io: file, filename: 'west zone', content_type: 'image/jpg')
shop9.save
p shop9

shop10 = Shop.create(
  name: "BiOrganic",
  address: '4 B St - Al Quoz - Dubai',
  phone_number: '0097143372199',
  email: 'admin@preciousfood.com'
)
file = URI.open('https://res.cloudinary.com/diepahdjf/image/upload/v1637432177/Biorganic-logo_frgmyg.png')
shop10.photos.attach(io: file, filename: 'biorganic', content_type: 'image/jpg')
shop10.save
p shop10

shop11 = Shop.create(
  name: "Emirates Bio Farm",
  address: '8th St - Abu Dhabi',
  phone_number: '0097137838422',
  email: 'info@emiratesbiofarm.com'
)
file = URI.open('https://res.cloudinary.com/diepahdjf/image/upload/v1637432337/yvnEgU_u_400x400_zmqcrl.jpg')
shop11.photos.attach(io: file, filename: 'emirates bio farm', content_type: 'image/jpg')
shop11.save
p shop11

shop12 = Shop.create(
  name: "GoGoGuy",
  address: 'Boutique villa 1, Dubai Media City - Dubai',
  phone_number: '009714 427 2466',
  email: 'go@gogoguy.com'
)
file = URI.open('https://res.cloudinary.com/diepahdjf/image/upload/v1637432410/tvugqtpzkkaqx3ernmnr.png')
shop12.photos.attach(io: file, filename: 'gogoguy', content_type: 'image/jpg')
shop12.save
p shop12

shop13 = Shop.create(
  name: "Maison Duffour",
  address: 'Warehouse 7 Street 10A - Al Quoz Industrial Area 3 - Dubai',
  phone_number: '00971509551520',
  email: 'contact@maisonduffour.com'
)
file = URI.open('https://res.cloudinary.com/diepahdjf/image/upload/v1637434401/CROPPED_LOGO-JAUNE-RVB_1_1b6acfc3-5de5-4305-b684-54d80c98938b_1200x1200_evw7jt.jpg')
shop13.photos.attach(io: file, filename: 'maison duffour', content_type: 'image/jpg')
shop13.save
p shop13

puts "Done with the shops"
p "-" * 20
puts "Creating the products"

product1 = Product.create(
  name: 'Pancake Mix',
  description: 'Heat a lightly greased griddle or pan over medium-high heat. Mix all ingredients together in a bowl until just combined and then pour 1/4-cup portions onto the hot griddle or pan. Cook until bubbly, then flip and let cook until done, about 2-3 minutes per side. Serve immediately. Makes about 8 pancakes.',
  price_cents: 2350,
  categories: ['Dairy free', 'Gluten free', 'Sugar free'],
  quantity: 1,
  supplier_country: 'USA',
  calories: 230,
  shop: shop1,
  macros: { protein: 2, carbs: 34, fat: 0 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142921/vegl/product/3_rzmluh.webp')
product1.photo.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
product1.save
p product1

product2 = Product.create(
  name: 'Bio Rice Drink',
  description: 'The Bridge rice milk is a completely vegetable drink, issued from organically grown Italian rice, of pleasant taste and excellent digestibility also for babies.',
  price: 13,
  categories: ['Dairy free', 'Sugar free', 'Vegan', 'Organic'],
  quantity: 1,
  supplier_country: 'Italy',
  calories: 47,
  shop: shop2,
  macros: { protein: 0.1, carbs: 12, fat: 1.4 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142921/vegl/product/1304626_main_scyf8a.webp')
product2.photo.attach(io: file, filename: 'ricemilk', content_type: 'image/jpg')
product2.save
p product2

product3 = Product.create(
  name: 'Green Stevia',
  description: "It is 100 percent natural and is made from Stevia leaves. It's the perfect natural sweetener for beverages and desserts that you can share with your family including kids.",
  price: 13,
  categories: ['Sugar free', 'Vegan'],
  quantity: 1,
  supplier_country: 'India',
  calories: 2,
  shop: shop3,
  macros: { protein: 0, carbs: 0.96, fat: 0 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142922/vegl/product/1445701_main_fc4d62.jpg')
product3.photo.attach(io: file, filename: 'cubes', content_type: 'image/jpg')
product3.save
p product3

product4 = Product.create(
  name: 'Sheese Mozzarella Slices',
  description: "Bute Islands's Mature Cheddar style Sheese is a 100% soya and dairy free cheese alternative made with coconut oil. It's free from lactose, gluten and produced using animal free process.",
  price_cents: 2499,
  categories: ['Dairy free', 'Vegan', 'Pescetarian'],
  quantity: 1,
  supplier_country: 'Scotland',
  calories: 213,
  shop: shop4,
  macros: { protein: 0.1, carbs: 19, fat: 24.4 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142922/vegl/product/1713607_main_plicnb.jpg')
product4.photo.attach(io: file, filename: 'sheese1', content_type: 'image/jpg')
product4.save
p product4

product5 = Product.create(
  name: 'Mango',
  description: 'A good ol mango.',
  price_cents: 4500,
  categories: ['Vegetarian', 'Vegan', 'Organic'],
  quantity: 1,
  supplier_country: 'Australia',
  calories: 202,
  shop: shop5,
  macros: { protein: 1.4, carbs: 24.7, fat: 0.6 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142923/vegl/product/Mango-Kent2__1952542097_1_r6ffnx.jpg')
product5.photo.attach(io: file, filename: 'mango', content_type: 'image/jpg')
product5.save
p product5

product6 = Product.create(
  name: 'Salmon Burgers with Herbs',
  description: "Salmon Burgers with Herbs are produced by Fresh Express Foodstuff LLC, an established brand and industry leader in live, fresh and frozen seafood.",
  price: 20,
  categories: ['Vegan', 'Pescetarian', 'Vegetarian'],
  quantity: 1,
  supplier_country: 'UAE',
  calories: 300,
  shop: shop6,
  macros: { protein: 20, carbs: 5, fat: 13 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142922/vegl/product/1194875_main_huo4aj.jpg')
product6.photo.attach(io: file, filename: 'salmon', content_type: 'image/jpg')
product6.save
p product6

product7 = Product.create(
  name: 'Organic Eggs',
  description: "The Organic Larder Organic Eggs are loaded with protein and vitamins for your daily requirement. These are free-range and are available in a crate of 10 eggs.",
  price_cents: 2230,
  categories: ['Organic'],
  quantity: 1,
  supplier_country: 'Denmark',
  calories: 70,
  shop: shop2,
  macros: { protein: 6, carbs: 0, fat: 5 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142922/vegl/product/1250218_main_ze2f9q.webp')
product7.photo.attach(io: file, filename: 'eggs', content_type: 'image/jpg')
product7.save
p product7

product8 = Product.create(
  name: 'Honey Flakes',
  description: 'Delicious flakes of golden corn with a touch of honey.',
  price: 21,
  categories: ['Dairy free', 'Gluten free'],
  quantity: 1,
  supplier_country: 'France',
  calories: 230,
  shop: shop3,
  macros: { protein: 1.9, carbs: 26, fat: 0.9 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142921/vegl/product/1188645-01_n7orsy.jpg')
product8.photo.attach(io: file, filename: 'honey', content_type: 'image/jpg')
product8.save
p product8

product9 = Product.create(
  name: 'Sugar Free Vanilla Powder',
  description: "Sugar free vanilla powder for all your sweet treats!",
  price_cents: 4800,
  categories: ['Dairy free', 'Sugar free', 'Vegetarian', 'Vegan', 'Pescetarian'],
  quantity: 1,
  supplier_country: 'UAE',
  calories: 2,
  shop: shop4,
  macros: { protein: 0, carbs: 30, fat: 0 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142922/vegl/product/1438490-01_utihzx.jpg')
product9.photo.attach(io: file, filename: 'vanilla', content_type: 'image/jpg')
product9.save
p product9

product10 = Product.create(
  name: "Granola, Chocolate & Berries",
  description: 'Made with Organic Coconut & Cocoa',
  price: 16,
  categories: ['Dairy free', 'Gluten free', 'Vegetarian', 'Organic', 'Pescetarian'],
  quantity: 1,
  supplier_country: 'Canada',
  calories: 130,
  shop: shop5,
  macros: { protein: 6, carbs: 37, fat: 10 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142921/vegl/product/22_xnmkkp.jpg')
product10.photo.attach(io: file, filename: 'granola', content_type: 'image/jpg')
product10.save
p product10

product11 = Product.create(
  name: 'Creamy Sheese Original',
  description: 'Our Original Creamy Sheese is a versatile dairy free cream cheese alternative. It can be used in exactly the same way as dairy cream cheese, sweet or savoury, except it’s certified vegan and kosher and made with coconut oil.',
  price: 25,
  categories: ['Dairy free', 'Sugar free', 'Gluten free', 'Vegetarian'],
  quantity: 1,
  supplier_country: 'Scotland',
  calories: 286,
  shop: shop1,
  macros: { protein: 6, carbs: 1.3, fat: 28 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142923/vegl/product/original-1_zyvviv.jpg')
product11.photo.attach(io: file, filename: 'creamy', content_type: 'image/jpg')
product11.save
p product11

product12 = Product.create(
  name: "Fish Spice Seasoning",
  description: 'This is an all-in-one rub with salt added. It is a blend of seasoned flour and breadcrumbs with lemon and herbs. The flour and breadcrumbs promote browning of the fish and prevent moisture loss.',
  price: 17,
  categories: ['Vegetarian', 'Pescetarian'],
  quantity: 1,
  supplier_country: 'India',
  calories: 10,
  shop: shop2,
  macros: { protein: 0, carbs: 10, fat: 0 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142922/vegl/product/fish-spice-200ml__1374064120_2_m1vewn.jpg')
product12.photo.attach(io: file, filename: 'fishspice', content_type: 'image/jpg')
product12.save
p product12

product13 = Product.create(
  name: 'Raw Pistachio Butter',
  description: 'Wilderness Poets Pistachio Butter is a delicious, creamy, naturally glowing green nut butter, made from fresh, Organic, Raw Pistachios.',
  price: 88,
  categories: ['Dairy free', 'Sugar free', 'Gluten free', 'Vegetarian', 'Vegan', 'Organic'],
  quantity: 1,
  supplier_country: 'Jordan',
  calories: 156,
  shop: shop3,
  macros: { protein: 6, carbs: 8, fat: 12 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142923/vegl/product/PistachioButter1_na1r9w.png')
product13.photo.attach(io: file, filename: 'butter', content_type: 'image/jpg')
product13.save
p product13

product14 = Product.create(
  name: 'Peanut Butter Cups',
  description: 'Nectar is a unique homegrown concept created in 2013 in the heart of Abu Dhabi that offers functional and nourishing foods and drinks that go beyond basic nutrition. We use the best seasonal, local, and organic ingredients to carefully craft replenishing juices and smoothies, grain- and refined sugar-free snacks and treats, and handcrafted salads with superfood ingredient.',
  price: 30,
  categories: ['Dairy free', 'Gluten free', 'Vegetarian', 'Vegan'],
  quantity: 1,
  supplier_country: 'UAE',
  calories: 47,
  shop: shop4,
  macros: { protein: 2, carbs: 3, fat: 5 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142923/vegl/product/MiniPBCups_540x_dbq1rd.png')
product14.photo.attach(io: file, filename: 'buttercups', content_type: 'image/jpg')
product14.save
p product14

product15 = Product.create(
  name: 'Unsweetened Cacao Powder',
  description: 'This product could be safely consumed by celiac disease patients and people with gluten intolerance as it contains less than 20 ppm, a standard established and enforced by the FDA. ',
  price: 28,
  categories: ['Dairy free', 'Sugar free', 'Gluten free', 'Vegetarian', 'Vegan'],
  quantity: 1,
  supplier_country: 'Lebanon',
  calories: 60,
  shop: shop5,
  macros: { protein: 4, carbs: 8, fat: 1.5 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142922/vegl/product/16247997280Cropped_1_e89htf.jpg')
product15.photo.attach(io: file, filename: 'cacoa', content_type: 'image/jpg')
product15.save
p product15

product16 = Product.create(
  name: 'Almonds',
  description: 'Almonds are a nutritious, portable, low-carbohydrate food that can be used in cooking or eaten raw as is. Almonds can be purchased, salted, unsalted, raw, or roasted. They can be turned into almond butter or ground as almond meal.',
  price_cents: 1874,
  categories: ['Sugar free', 'Vegetarian', 'Organic'],
  quantity: 1,
  supplier_country: 'USA',
  calories: 47,
  shop: shop1,
  macros: { protein: 6, carbs: 6.1, fat: 14 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142922/vegl/product/Almonds_540x_p8w3y5.png')
product16.photo.attach(io: file, filename: 'almond', content_type: 'image/jpg')
product16.save
p product16

product17 = Product.create(
  name: 'Herb Crackers',
  description: 'Nectar Grain-Free Herb Crackers (45g)',
  price: 20,
  categories: ['Dairy free', 'Sugar free', 'Vegetarian', 'Vegan'],
  quantity: 1,
  supplier_country: 'UAE',
  calories: 47,
  shop: shop2,
  macros: { protein: 5, carbs: 11, fat: 2 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142922/vegl/product/BEB04505xCropped_540x_ydolfw.jpg')
product17.photo.attach(io: file, filename: 'crackers', content_type: 'image/jpg')
product17.save
p product17

product18 = Product.create(
  name: 'Organic Monk Fruit',
  description: "Discover and enjoy the enlightened sweetener! Monk fruit is nature's perfect substitute for sugar. You will be pleasantly surprised by how great it tastes, because it is deliciously sweet without any bitter aftertaste like that of artificial sweeteners. At zero calories, monk fruit is perfect for keto and other no-sugar diets.",
  price: 59,
  categories: ['Sugar free', 'Vegetarian', 'Vegan'],
  quantity: 1,
  supplier_country: 'USA',
  calories: 0,
  shop: shop3,
  macros: { protein: 0, carbs: 8, fat: 0 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142921/vegl/product/0_1_1_540x_enye0u.jpg')
product18.photo.attach(io: file, filename: 'fruit', content_type: 'image/jpg')
product18.save
p product18

product19 = Product.create(
  name: 'Organic Coconut Cream',
  description: 'Ceylon Naturals Organic Coconut Cream is produced from the finest coconut meat from the best coconut harvests organically grown in Sri Lanka.',
  price_cents: 8950,
  categories: ['Dairy free', 'Sugar free', 'Gluten free', 'Vegetarian', 'Vegan', 'Organic'],
  quantity: 1,
  supplier_country: 'Sri Lanka',
  calories: 141,
  shop: shop4,
  macros: { protein: 1, carbs: 5, fat: 13 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142923/vegl/product/Untitled_0ad8b738-1829-46f6-bf76-449979b10ee4_fwbq9c.png')
product19.photo.attach(io: file, filename: 'coconut', content_type: 'image/jpg')
product19.save
p product19

product20 = Product.create(
  name: 'Cauliflower With Veggies',
  description: "Fullgreen's Rice Cauliflower with Tomato, Garlic, & Herbs is the ideal low-carb side to meals that call for a rich tomato flavor.",
  price: 19,
  categories: ['Vegetarian', 'Vegan', 'Pescetarian'],
  quantity: 1,
  supplier_country: 'Jordan',
  calories: 40,
  shop: shop5,
  macros: { protein: 1.5, carbs: 6, fat: 1 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637142921/vegl/product/1.Riced_UK_Tomato_Front_1_2400x2400-600x600-removebg-preview_1_540x_dq4gvj.png')
product20.photo.attach(io: file, filename: 'riced', content_type: 'image/jpg')
product20.save
p product20

product21 = Product.create(
  name: 'Brown Bread Multigrain',
  description: "This Gluten Free and Vegan Brown Multigrain Loaf Bread is manufactured in a 100% Gluten Free Environment and Certified by Association of European Coeliac Society, as well as certified by Vegan Australia! Ingredients: Potato Starch, Maize Starch, Rice flour, thickener E415, E412, E464 enymes, linseeds, sunflower seeds, soya protein concentrate, sugar, psyllium, dried sourdough, caramel, ground roasted lentils, yeast extract, maltodextrin, salt, acidity regulaotr E 262, Enyzme, alpha-amylase, sunflower oil, pumpkin seeds, sesame seeds. ",
  price: 24,
  categories: ['Gluten free', 'Dairy free', 'Sugar free'],
  quantity: 1,
  supplier_country: 'Australia',
  calories: 769,
  shop: shop13,
  macros: { protein: 26, carbs: 123, fat: 15 }
)
file = URI.open('https://res.cloudinary.com/diepahdjf/image/upload/v1637434613/SKINNYGENIEBreadLoafBrownMultigrain400g_Gluten-free_Vegan_1000x_fwybxt.jpg')
product21.photo.attach(io: file, filename: 'bread', content_type: 'image/jpg')
product21.save
p product21

product22 = Product.create(
  name: 'Sea Spaghetti',
  description: "Due to the nature of this product, this pack may contain a trace amount of fish, molluscs and/or crustaceans. Guidance from food safety authorities suggests limiting consumption of Hijiki to 5g dry weight per week. Sea vegs are naturally rich in iodine. People sensitive to the effects of iodine are advised to seek medical advice before consuming this product. Product weight: 30g. Ingredients: Dried Hijiki sea vegetable (Hijikia fusiforme). Its colour contrasts beautifully with other vibrant ingredients and works wonderfully well when combined with grains and other vegetables.",
  price: 50,
  categories: ['Pescetarian', 'Vegan'],
  quantity: 1,
  supplier_country: 'UK',
  calories: 15,
  shop: shop12,
  macros: { protein: 0.5, carbs: 1, fat: 1 }
)
file = URI.open('https://res.cloudinary.com/diepahdjf/image/upload/v1637435286/SVG0901.025A-Organic-Atlantic-Sea-Spaghetti_a2dee571-c56f-445f-9849-3277c47bd43a_2000x_b6zrm7.jpg')
product22.photo.attach(io: file, filename: 'sea spaghetti', content_type: 'image/jpg')
product22.save
p product22

product23 = Product.create(
  name: 'Miso Soup with Sea Vegetables,',
  description: "Miso is a flavourful Japanese soya food that makes a rich, satisfying soup. This luxurious tasting organic miso soup is made with two varieties of miso and two kinds of sea vegetables. Ingredients: Freeze-dried brown rice miso* (83%) (whole soya beans*, brown rice*, sea salt), freeze-dried sweet white miso* (11%) (whole soya beans*, rice*, sea salt), dried wakame (3%), dried green onions*, kombu powder (0.3%). *organically grown",
  price: 28,
  categories: ['Organic', 'Pescetarian'],
  quantity: 1,
  supplier_country: 'UK',
  calories: 285,
  shop: shop11,
  macros: { protein: 21, carbs: 25, fat: 8.6 }
)
file = URI.open('https://res.cloudinary.com/diepahdjf/image/upload/v1637435613/image_1200x_59fd0d52-231d-441e-a4c3-b1e899daa3af_1000x_yemie9.jpg')
product23.photo.attach(io: file, filename: 'miso', content_type: 'image/jpg')
product23.save
p product23

product24 = Product.create(
  name: 'Tofu Silken & Smooth',
  description: "Clearspring's award-winning Tofu is a delicious organic, high-protein and low-fat food that tastes as good as the fresh tofu made in Japan. It is ready to enjoy straight from the pack and is extremely versatile - perfect for use in numerous savoury and sweet dishes.",
  price: 15,
  categories: ['Vegan', 'Vegetarian'],
  quantity: 1,
  supplier_country: 'UK',
  calories: 228,
  shop: shop10,
  macros: { protein: 24, carbs: 5.7, fat: 14.4 }
)
file = URI.open('https://res.cloudinary.com/diepahdjf/image/upload/v1637435852/ClearspringTofuIMG_0805_800x_997f8cd6-032c-42b4-af2d-04adfc70f9d9_800x_mvtt4s.jpg')
product24.photo.attach(io: file, filename: 'tofu', content_type: 'image/jpg')
product24.save
p product24

product25 = Product.create!(
  name: 'Pesto Vegan With Tofu',
  description: "Our Italian Family Has Been Making Pesto For Generations And This Is Our Organic Tomato Recipe Will Add Pizzazz To Your Italian Meals.
  We Have Been Making Pesto For Over 75 Years And Our Organic Pesto Is Made To Strict Organic Standards And Is Suitable For Vegetarians.",
  price: 44,
  categories: ['Gluten free', 'Vegetarian', 'Organic'],
  quantity: 1,
  supplier_country: 'Italy',
  calories: 642,
  shop: shop9,
  macros: { protein: 6.3, carbs: 12.2, fat: 62.7 }
)
file = URI.open('https://res.cloudinary.com/diepahdjf/image/upload/v1637436354/2632_800x_l7s8jr.jpg')
product25.photo.attach(io: file, filename: 'pesto', content_type: 'image/jpg')
product25.save
p product25

product26 = Product.create(
  name: 'No Egg Replacer Mix',
  description: "Orgran No Egg mix contains no cholesterol, no lactose and no egg! It can be used in cakes, meringues or to make egg free mayonnaise.",
  price_cents: 1999,
  categories: ['Vegan', 'Vegetarian', 'Dairy free', 'Sugar free', 'Pescetarian'],
  quantity: 1,
  supplier_country: 'USA',
  calories: 50,
  shop: shop13,
  macros: { protein: 3, carbs: 13, fat: 10 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637491703/vegl/product/720516010552_400x_mczkih.jpg')
product26.photo.attach(io: file, filename: 'eggmix', content_type: 'image/jpg')
product26.save
p product26

product27 = Product.create(
  name: 'Keto Butter Pecan Pint',
  description: "Cream, Water, Pecans, Egg Yolks, Non-GMO Soluble Corn Fiber, Allulose, Natural Flavor, Erythritol, Milk Protein Concentrate, Vegetable Glycerin, Sunflower Oil, Tara Gum, Guar Gum, Butter, Monk Fruit Concentrate, Salt, Citric Acid",
  price: 45,
  categories: ['Vegetarian'],
  quantity: 1,
  supplier_country: 'USA',
  calories: 230,
  shop: shop9,
  macros: { protein: 4, carbs: 4, fat: 9 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637491703/vegl/product/ENLIGHTENEDKetoButterPecanPint_473ml_600x_lr3vdn.jpg')
product27.photo.attach(io: file, filename: 'icecream', content_type: 'image/jpg')
product27.save
p product27

product28 = Product.create(
  name: 'FRESH Eggplant',
  description: "Eggplant, Solanum melongena, is a tropical, herbaceous, perennial plant, closely related to tomato, in the family Solanaceae which is grown for its edible fruit.",
  price_cents: 299,
  categories: ['Vegan', 'Vegetarian', 'Organic'],
  quantity: 1,
  supplier_country: 'Middle East',
  calories: 25,
  shop: shop6,
  macros: { protein: 0.8, carbs: 4.8, fat: 0.1 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637491703/vegl/product/or100000137_615fabd8-b02b-44a2-87c6-16c0d7092a40_600x_wzblca.jpg')
product28.photo.attach(io: file, filename: 'eggplant', content_type: 'image/jpg')
product28.save
p product28

product29 = Product.create(
  name: 'FRESH Ginger',
  description: "Ginger, Zingiber officinale, is an erect, herbaceous perennial plant in the family Zingiberaceae grew for its edible rhizome (underground stem) which is widely used as a spice.",
  price_cents: 199,
  categories: ['Vegan', 'Vegetarian', 'Organic'],
  quantity: 1,
  supplier_country: 'China',
  calories: 5,
  shop: shop11,
  macros: { protein: 0.4, carbs: 1, fat: 0.3 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637491703/vegl/product/or100000143_aa9770a9-c17f-45b0-87ef-f93fc5e50f74_600x_k7x7td.jpg')
product29.photo.attach(io: file, filename: 'ginger', content_type: 'image/jpg')
product29.save
p product29

product30 = Product.create(
  name: 'FRESH Broccoli',
  description: "Broccoli is an edible green plant in the cabbage family (family Brassicaceae, genus Brassica) whose large flowering head and stalk is eaten as a vegetable.",
  price_cents: 799,
  categories: ['Vegetarian', 'Organic'],
  quantity: 1,
  supplier_country: 'India',
  calories: 24,
  shop: shop8,
  macros: { protein: 0, carbs: 4.7, fat: 0 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637491703/vegl/product/or100000130_600x_dtuhh3.jpg')
product30.photo.attach(io: file, filename: 'broccoli', content_type: 'image/jpg')
product30.save
p product30

product31 = Product.create(
  name: 'FRESH Lemon',
  description: "Lemon, Citrus lemon, is a small evergreen tree in the family Rutaceae grown for its edible fruit which, among other things, are used in a variety of foods and drinks.",
  price: 3,
  categories: ['Vegan', 'Vegetarian', 'Organic'],
  quantity: 1,
  supplier_country: 'India',
  calories: 22,
  shop: shop10,
  macros: { protein: 1.1, carbs: 9.3, fat: 0.3 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637491703/vegl/product/or100000148_37dbc876-ea5e-496b-a818-9e87f417a42c_600x_mosjin.jpg')
product31.photo.attach(io: file, filename: 'lemon', content_type: 'image/jpg')
product31.save
p product31

product32 = Product.create(
  name: 'Burger Patties',
  description: "The Beyond Burger is the world’s first plant-based burger that looks, cooks, and satisfies like beef.",
  price_cents: 3498,
  categories: ['Vegan', 'Vegetarian', 'Pescetarian'],
  quantity: 1,
  supplier_country: 'Canada',
  calories: 270,
  shop: shop2,
  macros: { protein: 19, carbs: 7, fat: 5 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637491703/vegl/product/Top-view-Front-Burger-IND-Frozen_Def_600x_sr7dyx.jpg')
product32.photo.attach(io: file, filename: 'patty', content_type: 'image/jpg')
product32.save
p product32

product33 = Product.create(
  name: 'FRESH Orange Navel',
  description: "The navel orange actually grows a second “twin” fruit opposite its stem. The second fruit remains underdeveloped, but from the outside, it resembles a human navel—hence the name.",
  price_cents: 299,
  categories: ['Vegan', 'Vegetarian', 'Organic'],
  quantity: 1,
  supplier_country: 'Australia',
  calories: 60,
  shop: shop10,
  macros: { protein: 1, carbs: 15.4, fat: 0 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637558859/vegl/product/71069_main_syzrk4.jpg')
product33.photo.attach(io: file, filename: 'orange', content_type: 'image/jpg')
product33.save
p product33

product34 = Product.create(
  name: 'FRESH Green Chili',
  description: "Green chilis are immature chili peppers, most often Pasilla, Anaheim or Poblano peppers that have been harvested before fully ripening.",
  price_cents: 199,
  categories: ['Vegan', 'Vegetarian', 'Organic'],
  quantity: 1,
  supplier_country: 'India',
  calories: 30,
  shop: shop10,
  macros: { protein: 0.9, carbs: 3.3, fat: 0.9 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637491703/vegl/product/or100000145_815c0d53-61b5-43e4-981a-e644749f9879_600x_irynqs.jpg')
product34.photo.attach(io: file, filename: 'chilli', content_type: 'image/jpg')
product34.save
p product34

product35 = Product.create(
  name: 'VIOLIFE Grated Cheese',
  description: "These grated cheese shreds are great to have in the fridge! Make a creamy risotto, top your baked potato or pasta, grilled cheese sandwich…the options are endless!",
  price: 23,
  categories: ['Vegan', 'Gluten free', 'Dairy free'],
  quantity: 1,
  supplier_country: 'USA',
  calories: 290,
  shop: shop5,
  macros: { protein: 0, carbs: 21, fat: 24 }
)
file = URI.open('https://res.cloudinary.com/le-wagon-dubai-fatymah/image/upload/v1637491703/vegl/product/mozzarella_wnxwlk.jpg')
product35.photo.attach(io: file, filename: 'mozzarella', content_type: 'image/jpg')
product35.save
p product35

product36 = Product.create(
  name: 'Meat Free Fishless Fingers',
  description: "Enjoy a vegan version of the British classic 'fish & chips'. This product comes in Pack of 10. QUORN Meat Free Fillets are perfect on-the-go meals for vegans who are looking for alternatives for chicken breast. This vegan fillets tastes great when simmered in savory sauce or rubbed with a generous pinch of herbs and spices.",
  price: 20,
  categories: ['Vegan', 'Gluten free'],
  quantity: 1,
  supplier_country: 'France',
  calories: 290,
  shop: shop3,
  macros: { protein: 5, carbs: 21, fat: 24 }
)
file = URI.open('https://res.cloudinary.com/happy-tours/image/upload/v1637743514/5019503038620_1_1000x_njncki.jpg')
product36.photo.attach(io: file, filename: 'fish', content_type: 'image/jpg')
product36.save
p product36


product37 = Product.create(
  name: 'Yeast Flakes',
  description: "New recipe with more vitamin B 12 and vitamin D. Vegan food with a cheesy, nutty taste. Made from primary inactive yeast, a rich natural source of B vitamins & trace elements. Sprinkle on soups, stews, casseroles, pasta or salads to enhance the flavour. To preserve vitamins, do not heat to 100C. Suitable for vegetarians, vegans and allergen sufferers (wheat, gluten, dairy, nut free).",
  price_cents: 3500,
  categories: ['Vegan', 'Gluten free', 'Dairy free'],
  quantity: 1,
  supplier_country: 'France',
  calories: 124,
  shop: shop5,
  macros: { protein: 50, carbs: 16, fat: 4 }
)
file = URI.open('https://res.cloudinary.com/happy-tours/image/upload/v1637778076/marigold_500x_jbemsc.jpg')
product37.photo.attach(io: file, filename: 'yeast', content_type: 'image/jpg')
product37.save
p product37


product38 = Product.create(
  name: 'Indian Ginger',
  description: "Fresh ginger from India. Your throats best friend!",
  price: 20,
  categories: ['Vegan', 'Vegetarian'],
  quantity: 1,
  supplier_country: 'India',
  calories: 80,
  shop: shop8,
  macros: { protein: 1.8, carbs: 18, fat: 0.8 }
)
file = URI.open('https://res.cloudinary.com/happy-tours/image/upload/v1637749833/ging_500x_wl6x15.jpg')
product38.photo.attach(io: file, filename: 'vegetable', content_type: 'image/jpg')
product38.save
p product38


product39 = Product.create(
  name: 'Avocado',
  description: "Hass avocado. The Hass avocado is a cultivar of avocado with dark green–colored, bumpy skin. It was first grown and sold by Southern California mail carrier and amateur horticulturist Rudolph Hass, who also gave it his name.",
  price: 30,
  categories: ['Vegan', 'Vegetarian'],
  quantity: 1,
  supplier_country: 'Mexico',
  calories: 124,
  shop: shop6,
  macros: { protein: 5, carbs: 21, fat: 4 }
)
file = URI.open('https://res.cloudinary.com/happy-tours/image/upload/v1637751285/or100000103_1_aadbe2c2-5544-44ba-8575-f3286b72ce96_1000x_puho7b.jpg')
product39.photo.attach(io: file, filename: 'avocado', content_type: 'image/jpg')
product39.save
p product39


product40 = Product.create(
  name: 'Green chili',
  description: "These organically grown green chili from Lebanon can add a little spiciness to your dishes. They are individually mild and can get hotter the more you add to your favorite vegan dish. They are perfect for adding heat and color to your curry, salad, or salsa. ",
  price: 30,
  categories: ['Vegan', 'Vegetarian'],
  quantity: 1,
  supplier_country: 'Lebanon',
  calories: 124,
  shop: shop5,
  macros: { protein: 5, carbs: 21, fat: 4 }
)
file = URI.open('https://res.cloudinary.com/happy-tours/image/upload/v1637751493/Green_Chili_480x480_8b2a0f2a-560e-4572-9f52-020e493ed6c8_400x_p8hxuf.jpg')
product40.photo.attach(io: file, filename: 'chili', content_type: 'image/jpg')
product40.save
p product40


product41 = Product.create(
  name: 'Tofu Tuna',
  description: "Lord Of Tofu Thuna The Vegan Tuna Substitute Reminds In Taste And Fibrous Consistency Of Red Tuna. The Organic Soya-Based Vegetable Tuna Is The Perfect Fish Alternative On The Pizza, With Pasta Salad, Potato Salad And Green Salads. Even A Traditional Tuna Salad Becomes A Vegan Treat With Tofu Tuna. The Red Tuna Tastes Delicious On Cold Plates Along With Pepperoni Olives, Capers, And Other Mediterranean Fruits And Vegetables. Not To Forget The Popular Sushi, This Also Succeeds Simply And Delicious With The Tuna Alternative. Just Pluck Apart And Continue To Use.",
  price: 30,
  categories: ['Vegan', 'Gluten free'],
  quantity: 1,
  supplier_country: 'Italy',
  calories: 124,
  shop: shop12,
  macros: { protein: 5, carbs: 21, fat: 4 }
)
file = URI.open('https://res.cloudinary.com/happy-tours/image/upload/v1637758009/organic_thuna_kein_fish_800x_kjz1ro.jpg')
product41.photo.attach(io: file, filename: 'tofu', content_type: 'image/jpg')
product41.save
p product41


product41 = Product.create(
  name: 'Salmontini Organic Smoked Salmon',
  description: "The flavorful meat and thick filets make it one of the most prized among chefs and home cooks. It holds up well on the grill and when pan-roasted in a nonstick skillet, creating a custardy center with a slightly nutty flavor when medium-rare. Like steak, it’s important to temper King salmon filets on the counter 30 minutes to an hour before cooking and allow it to rest when it comes off the heat.",
  price: 30,
  categories: ['Vegan', 'Pescetarian'],
  quantity: 1,
  supplier_country: 'Italy',
  calories: 124,
  shop: shop12,
  macros: { protein: 5, carbs: 21, fat: 4 }
)
file = URI.open('https://res.cloudinary.com/happy-tours/image/upload/v1637781002/1358943_main_ihwgd6.jpg')
product41.photo.attach(io: file, filename: 'fish', content_type: 'image/jpg')
product41.save
p product41
