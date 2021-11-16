#require "open-uri"

puts "Creating Veggielite's users"
User.destroy_all
Shop.destroy_all
Product.destroy_all

user1 = User.create(
  email: "zuckerberg@gmail.com",
  first_name: 'Suzy',
  last_name: 'Miller',
  phone_number: '0554534545',
  address: 'Al Barsha 1',
  password: 'ilovemeta'
)
# file = URI.open('https://image.shutterstock.com/image-photo/head-shot-close-portrait-overjoyed-260nw-1537134881.jpg')
# user1.photos.attach(io: file, filename: 'suzy.jpg', content_type: 'image/jpg')
# user1.user = user
# user1.save
p user1

user2 = User.create(
  email: "tabitha@gmail.com",
  first_name: 'Tabitha',
  last_name: 'Cavalho',
  phone_number: '0456787656',
  address: 'Al Qusais',
  password: "iloveveggielite"
)
# file = URI.open('https://image.shutterstock.com/image-photo/headshot-portrait-happy-indian-millennial-260nw-1529381102.jpg')
# user2.photos.attach(io: file, filename: 'tabitha.jpg', content_type: 'image/jpg')
# user2.user = user
# user.save
p user2

user3 = User.create(
  email: "steven@gmail.com",
  first_name: 'Steven',
  last_name: 'Johnson',
  phone_number: '0509876768',
  address: 'Barsha Heights',
  password: "iamsteven"
)
# file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Green_winter.jpg/1024px-Green_winter.jpg')
# user3.photos.attach(io: file, filename: 'steven.jpg', content_type: 'image/jpg')
# user3.user = user
# user3.save
p user3

puts "Done with the users"
p "-" * 20
puts "Creating the shops"

shop1 = Shop.create(
  name: 'Carrefour',
  address: 'Dubai Festival City',
  phone_number: '80073232',
  email: 'help@carrefour.com'
  # website: 'www.carrefouruae.com'
)
# file = URI.open('https://i1.wp.com/thepointshabibi.com/wp-content/uploads/2020/02/carrefour-uae-logo-promo-code-dubai-abu-dhabi-sharjah.png?fit=616%2C616&ssl=1')
# shop1.photos.attach(io: file, filename: 'carrefour', content_type: 'image/jpg')
# shop1.shop = shop
# shop1.save
p shop1

shop2 = Shop.create(
  name: 'iHerb',
  address: 'California',
  phone_number: '012354536987',
  email: 'help@iherb.com'
  # website: 'www.iherb.com'
)
# file = URI.open('https://cdn.phenompeople.com/CareerConnectResources/IHINGLOBAL/social/1024x512-1624016160208.jpg')
# shop2.photos.attach(io: file, filename: 'iherb', content_type: 'image/jpg')
# shop2.shop = shop
# shop2.save
p shop2

shop3 = Shop.create(
  name: 'Bute Island',
  address: 'Isle of Bute',
  phone_number: '044583828575',
  email: 'help@buteisland.com'
  # website: 'www.buteisland.com'
)
# file = URI.open('https://www.buteisland.com/wp-content/themes/bif/img/logo.png')
# shop3.photos.attach(io: file, filename: 'buteisland', content_type: 'image/jpg')
# shop3.shop = shop
# shop3.save
p shop3

shop4 = Shop.create(
  name: "Spinney's",
  address: 'Dubai Mall',
  phone_number: '80073232',
  email: 'help@spinneys.com'
  # website: 'www.spinneys.com'
)
# file = URI.open('https://gulfbusiness.com/wp-content/uploads/2018/01/spinneys-dubai.jpg')
# shop4.photos.attach(io: file, filename: 'spinneys', content_type: 'image/jpg')
# shop4.shop = shop
# shop4.save
p shop4

shop5 = Shop.create(
  name: "Lulu's Hypermarket",
  address: 'Barsha Heights',
  phone_number: '80073232',
  email: 'help@lulu.com'
  # website: 'www.luluhypermarket.com'
)
#file = URI.open('https://www.timeskuwait.com/news/wp-content/uploads/2021/07/DAJEEJ-PHOTO-3-e1625561988700.jpg')
#shop5.photos.attach(io: file, filename: 'lulus', content_type: 'image/jpg')
# shop5.shop = shop
# shop5.save
p shop5

puts "Done with the shops"
p "-" * 20
puts "Creating the products"

product1 = Product.create(
  name: 'Red Mill Pancake',
  description: 'Heat a lightly greased griddle or pan over medium-high heat. Mix all ingredients together in a bowl until just combined and then pour 1/4-cup portions onto the hot griddle or pan. Cook until bubbly, then flip and let cook until done, about 2-3 minutes per side. Serve immediately. Makes about 8 pancakes.',
  price: 23.5,
  categories: 'Gluten free',
  quantity: 1,
  supplier_country: 'USA',
  calories: 230,
  shop: shop1,
  macros: { protein: 2, carbs: 34, fat: 0 }
)
# file = URI.open('https://s3.images-iherb.com/brm/brm11462/w/3.jpg')
# product1.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product1.product = product
# product1.save
p product1

product2 = Product.create(
  name: 'The Bridge Natural Bio Rice Drink',
  description: 'The Bridge rice milk is a completely vegetable drink, issued from organically grown Italian rice, of pleasant taste and excellent digestibility also for babies.',
  price: 13,
  categories: 'Dairy free',
  quantity: 1,
  supplier_country: 'Italy',
  calories: 47,
  shop: shop2,
  macros: { protein: 0.1, carbs: 12, fat: 1.4 }
)
# file = URI.open('https://cdnprod.mafretailproxy.com/sys-master-root/h8c/h24/16700105261086/1304626_main.jpg_1700Wx1700H')
# product2.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product2.product = product
# product2.save
p product2

product3 = Product.create(
  name: 'Sugar Free Green Cubes',
  description: "It is 100 percent natural and is made from Stevia leaves. It's the perfect natural sweetener for beverages and desserts that you can share with your family including kids.",
  price: 13,
  categories: 'Sugar free',
  quantity: 1,
  supplier_country: 'India',
  calories: 2,
  shop: shop3,
  macros: { protein: 0, carbs: 0.96, fat: 0 }
)
# file = URI.open('https://cdnprod.mafretailproxy.com/sys-master-root/h37/h1d/13300883488798/1445701_main.jpg_1700Wx1700H')
# product3.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product3.product = product
# product3.save
p product3

product4 = Product.create(
  name: 'Sheese Vegan Mozzarella Slices',
  description: "Bute Islands's Mature Cheddar style Sheese is a 100% soya and dairy free cheese alternative made with coconut oil. It's free from lactose, gluten and produced using animal free process.",
  price: 24.99,
  categories: 'Vegan',
  quantity: 1,
  supplier_country: 'Scotland',
  calories: 213,
  shop: shop4,
  macros: { protein: 0.1, carbs: 19, fat: 24.4 }
)
# file = URI.open('https://cdnprod.mafretailproxy.com/sys-master-root/h12/h22/15225779290142/1713607_main.jpg_1700Wx1700H')
# product4.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product4.product = product
# product4.save
p product4

product5 = Product.create(
  name: 'Mango',
  description: 'A good ol mango.',
  price: 4.5,
  categories: 'Vegetarian',
  quantity: 1,
  supplier_country: 'Australia',
  calories: 202,
  shop: shop5,
  macros: { protein: 1.4, carbs: 24.7, fat: 0.6 }
)
# file = URI.open('https://uploads.myfreshdelmonte.com/public/uploads/catalog/product/thumb/m/a/Mango-Kent2__1952542097.jpg')
# product5.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product5.product = product
# product5.save
p product5

product6 = Product.create(
  name: 'Fresh Express Salmon Burgers with Herbs',
  description: "Salmon Burgers with Herbs are produced by Fresh Express Foodstuff LLC, an established brand and industry leader in live, fresh and frozen seafood.",
  price: 20,
  categories: 'Pescetarian',
  quantity: 1,
  supplier_country: 'UAE',
  calories: 300,
  shop: shop1,
  macros: { protein: 20, carbs: 5, fat: 13 }
)
# file = URI.open('https://cdnprod.mafretailproxy.com/sys-master-root/hdd/hfd/11614879154206/1194875_main.jpg_1700Wx1700H')
# product5.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product5.product = product
# product5.save
p product6

product7 = Product.create(
  name: 'Organic Larder Organic Free Range Eggs',
  description: "The Organic Larder Organic Eggs are loaded with protein and vitamins for your daily requirement. These are free-range and are available in a crate of 10 eggs.",
  price: 22.3,
  categories: 'Organic',
  quantity: 1,
  supplier_country: 'Denmark',
  calories: 70,
  shop: shop2,
  macros: { protein: 6, carbs: 0, fat: 5 }
)
# file = URI.open('https://cdnprod.mafretailproxy.com/sys-master-root/h3a/h57/15071151456286/1250218_main.jpg_1700Wx1700H')
# product5.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product5.product = product
# product5.save
p product7

product8 = Product.create(
  name: 'Nestle Go Free Honey Flakes',
  description: 'Delicious flakes of golden corn with a touch of honey.',
  price: 21,
  categories: 'Gluten free',
  quantity: 1,
  supplier_country: 'France',
  calories: 230,
  shop: shop3,
  macros: { protein: 1.9, carbs: 26, fat: 0.9 }
)
# file = URI.open('https://www.luluhypermarket.com/medias/1188645-01.jpg-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wzMDYxMDR8aW1hZ2UvanBlZ3xpbWFnZXMvaDAxL2hkZC9oMDAvOTI2Nzk1NDkwOTIxNC5qcGd8YTY1YjFkN2ExN2NhNjUzNmJhYTkyYzEzN2JmZjU2NWY3NDVkMmNlMmJlNzc3YTBlYTY2OWUzZWI3MWVjYmRlYg')
# product5.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product5.product = product
# product5.save
p product8

product9 = Product.create(
  name: 'Symega Sugar Free Vanilla Powder',
  description: "Sugar free vanilla powder for all your sweet treats!",
  price: 4.8,
  categories: 'Sugar free',
  quantity: 1,
  supplier_country: 'UAE',
  calories: 2,
  shop: shop4,
  macros: { protein: 0, carbs: 30, fat: 0 }
)
# file = URI.open('https://www.luluhypermarket.com/medias/1438490-01.jpg-1200Wx1200H?context=bWFzdGVyfGltYWdlc3w5ODgxMnxpbWFnZS9qcGVnfGltYWdlcy9oYmMvaDQ3L2gwMC85MjQ3MjgyMTAyMzAyLmpwZ3xjNzVjNDYwODNlZjM4MTQ4OGIyYjc5ODg2MGFiZmFjNDIzZTFkYTc5OTlhMjRlNGI4ZjVjM2FjMzRjMmJmMTFm')
# product5.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product5.product = product
# product5.save
p product9

product10 = Product.create(
  name: "Nature's Path, Love Crunch, Premium Organic Granola, Dark Chocolate & Red Berries",
  description: 'Made with Organic Coconut & Cocoa',
  price: 16,
  categories: 'Vegetarian',
  quantity: 1,
  supplier_country: 'Canada',
  calories: 130,
  shop: shop5,
  macros: { protein: 6, carbs: 37, fat: 10 }
)
# file = URI.open('https://s3.images-iherb.com/npa/npa77180/w/22.jpg')
# product5.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product5.product = product
# product5.save
p product10

product11 = Product.create(
  name: 'Creamy Sheese Original',
  description: 'Our Original Creamy Sheese is a versatile dairy free cream cheese alternative. It can be used in exactly the same way as dairy cream cheese, sweet or savoury, except it’s certified vegan and kosher and made with coconut oil.',
  price: 25,
  categories: 'Dairy free',
  quantity: 1,
  supplier_country: 'Scotland',
  calories: 286,
  shop: shop1,
  macros: { protein: 6, carbs: 1.3, fat: 28 }
)
# file = URI.open('https://www.buteisland.com/wp-content/uploads/2017/11/original-1.jpg')
# product5.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product5.product = product
# product5.save
p product11

product12 = Product.create(
  name: "Ina Paarman's Kitchen Fish Spice Seasoning",
  description: 'This is an all-in-one rub with salt added. It is a blend of seasoned flour and breadcrumbs with lemon and herbs. The flour and breadcrumbs promote browning of the fish and prevent moisture loss.',
  price: 17,
  categories: 'Pescetarian',
  quantity: 1,
  supplier_country: 'India',
  calories: 10,
  shop: shop2,
  macros: { protein: 0, carbs: 10, fat: 0 }
)
# file = URI.open('https://uploads.myfreshdelmonte.com/public/uploads/catalog/product/preview/f/i/fish-spice-200ml__1374064120.jpg')
# product5.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product5.product = product
# product5.save
p product12

product13 = Product.create(
  name: 'Wilderness Poets Raw Pistachio Butter',
  description: 'Wilderness Poets Pistachio Butter is a delicious, creamy, naturally glowing green nut butter, made from fresh, Organic, Raw Pistachios.',
  price: 88,
  categories: 'Gluten free',
  quantity: 1,
  supplier_country: 'Jordan',
  calories: 156,
  shop: shop3,
  macros: { protein: 6, carbs: 8, fat: 12 }
)
# file = URI.open('https://cdn.shopify.com/s/files/1/0578/7035/2563/products/PistachioButter1.png?v=1632993024')
# product5.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product5.product = product
# product5.save
p product13

product14 = Product.create(
  name: 'Nectar Mini Peanut Butter Cups',
  description: 'Nectar is a unique homegrown concept created in 2013 in the heart of Abu Dhabi that offers functional and nourishing foods and drinks that go beyond basic nutrition. We use the best seasonal, local, and organic ingredients to carefully craft replenishing juices and smoothies, grain- and refined sugar-free snacks and treats, and handcrafted salads with superfood ingredient.',
  price: 30,
  categories: 'Dairy free',
  quantity: 1,
  supplier_country: 'UAE',
  calories: 47,
  shop: shop4,
  macros: { protein: 2, carbs: 3, fat: 5 }
)
# file = URI.open('https://cdn.shopify.com/s/files/1/0578/7035/2563/products/MiniPBCups_540x.png?v=1634036417')
# product5.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product5.product = product
# product5.save
p product14

product15 = Product.create(
  name: 'Bites Of Delight Gluten-Free Vegan Unsweetened Cacao Powder',
  description: 'This product could be safely consumed by celiac disease patients and people with gluten intolerance as it contains less than 20 ppm, a standard established and enforced by the FDA. ',
  price: 28,
  categories: 'Sugar free',
  quantity: 1,
  supplier_country: 'Lebanon',
  calories: 60,
  shop: shop5,
  macros: { protein: 4, carbs: 8, fat: 1.5 }
)
# file = URI.open('https://cdn.shopify.com/s/files/1/0578/7035/2563/products/16247997280Cropped_1.jpg?v=1632134117')
# product5.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product5.product = product
# product5.save
p product15

product16 = Product.create(
  name: 'Almonds',
  description: 'Almonds are a nutritious, portable, low-carbohydrate food that can be used in cooking or eaten raw as is. Almonds can be purchased, salted, unsalted, raw, or roasted. They can be turned into almond butter or ground as almond meal.',
  price: 18.74,
  categories: 'Vegan',
  quantity: 1,
  supplier_country: 'USA',
  calories: 47,
  shop: shop1,
  macros: { protein: 6, carbs: 6.1, fat: 14 }
)
# file = URI.open('https://cdn.shopify.com/s/files/1/0578/7035/2563/products/Almonds_540x.png?v=1635418188')
# product5.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product5.product = product
# product5.save
p product16

product17 = Product.create(
  name: 'Nectar Grain-Free Herb Crackers',
  description: 'Nectar Grain-Free Herb Crackers (45g)',
  price: 20,
  categories: 'Vegetarian',
  quantity: 1,
  supplier_country: 'UAE',
  calories: 47,
  shop: shop2,
  macros: { protein: 5, carbs: 11, fat: 2 }
)
# file = URI.open('https://cdn.shopify.com/s/files/1/0578/7035/2563/products/BEB04505xCropped_540x.jpg?v=1634037279')
# product5.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product5.product = product
# product5.save
p product17

product18 = Product.create(
  name: 'NOW Foods Real Food Organic Monk Fruit 1 to 1 Sugar Replacement',
  description: "Discover and enjoy the enlightened sweetener! Monk fruit is nature's perfect substitute for sugar. You will be pleasantly surprised by how great it tastes, because it is deliciously sweet without any bitter aftertaste like that of artificial sweeteners. At zero calories, monk fruit is perfect for keto and other no-sugar diets.",
  price: 59,
  categories: 'Pescetarian',
  quantity: 1,
  supplier_country: 'USA',
  calories: 0,
  shop: shop3,
  macros: { protein: 0, carbs: 8, fat: 0 }
)
# file = URI.open('https://cdn.shopify.com/s/files/1/0578/7035/2563/products/0_1_1_540x.jpg?v=1631624598')
# product5.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product5.product = product
# product5.save
p product18

product19 = Product.create(
  name: 'Ceylon Naturals Organic Coconut Cream',
  description: 'Ceylon Naturals Organic Coconut Cream is produced from the finest coconut meat from the best coconut harvests organically grown in Sri Lanka.',
  price: 8.95,
  categories: 'Dairy free',
  quantity: 1,
  supplier_country: 'Sri Lanka',
  calories: 141,
  shop: shop4,
  macros: { protein: 1, carbs: 5, fat: 13 }
)
# file = URI.open('https://cdn.shopify.com/s/files/1/0578/7035/2563/products/Untitled_0ad8b738-1829-46f6-bf76-449979b10ee4.png?v=1635334696')
# product5.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product5.product = product
# product5.save
p product19

product20 = Product.create(
  name: 'FullGreen Riced Cauliflower With Tomato, Garlic, & Herbs',
  description: "Fullgreen's Rice Cauliflower with Tomato, Garlic, & Herbs is the ideal low-carb side to meals that call for a rich tomato flavor.",
  price: 19,
  categories: 'Gluten free',
  quantity: 1,
  supplier_country: 'Jordan',
  calories: 40,
  shop: shop5,
  macros: { protein: 1.5, carbs: 6, fat: 1 }
)
# file = URI.open('https://cdn.shopify.com/s/files/1/0578/7035/2563/products/1.Riced_UK_Tomato_Front_1_2400x2400-600x600-removebg-preview_1_540x.png?v=1632554759')
# product5.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product5.product = product
# product5.save
p product20
