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

user2 = Tour.create(
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

user3 = Tour.create(
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
  category: 'Gluten free',
  quantity: 1,
  supplier_country: 'USA',
  calories: 230,
  macros: ['20', '30', '50'],
  shop_name: "iHerb"
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
  category: 'Dairy free',
  quantity: 1,
  supplier_country: 'Italy',
  calories: 47,
  macros: ['20', '30', '50'],
  shop_name: "iHerb"
)
# file = URI.open('https://s3.images-iherb.com/brm/brm11462/w/3.jpg')
# product2.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product2.product = product
# product2.save
p product2

product3 = Product.create(
  name: 'The Bridge Natural Bio Rice Drink',
  description: 'The Bridge rice milk is a completely vegetable drink, issued from organically grown Italian rice, of pleasant taste and excellent digestibility also for babies.',
  price: 13,
  category: 'Dairy free',
  quantity: 1,
  supplier_country: 'Italy',
  calories: 47,
  macros: ['20', '30', '50'],
  shop_name: "iHerb"
)
# file = URI.open('https://s3.images-iherb.com/brm/brm11462/w/3.jpg')
# product3.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product3.product = product
# product3.save
p product3

product4 = Product.create(
  name: 'The Bridge Natural Bio Rice Drink',
  description: 'The Bridge rice milk is a completely vegetable drink, issued from organically grown Italian rice, of pleasant taste and excellent digestibility also for babies.',
  price: 13,
  category: 'Dairy free',
  quantity: 1,
  supplier_country: 'Italy',
  calories: 47,
  macros: ['20', '30', '50'],
  shop_name: "iHerb"
)
# file = URI.open('https://s3.images-iherb.com/brm/brm11462/w/3.jpg')
# product4.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product4.product = product
# product4.save
p product4

product5 = Product.create(
  name: 'The Bridge Natural Bio Rice Drink',
  description: 'The Bridge rice milk is a completely vegetable drink, issued from organically grown Italian rice, of pleasant taste and excellent digestibility also for babies.',
  price: 13,
  category: 'Dairy free',
  quantity: 1,
  supplier_country: 'Italy',
  calories: 47,
  macros: ['20', '30', '50'],
  shop_name: "iHerb"
)
# file = URI.open('https://s3.images-iherb.com/brm/brm11462/w/3.jpg')
# product5.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product5.product = product
# product5.save
p product5

product6 = Product.create(
  name: 'The Bridge Natural Bio Rice Drink',
  description: 'The Bridge rice milk is a completely vegetable drink, issued from organically grown Italian rice, of pleasant taste and excellent digestibility also for babies.',
  price: 13,
  category: 'Dairy free',
  quantity: 1,
  supplier_country: 'Italy',
  calories: 47,
  macros: ['20', '30', '50'],
  shop_name: "iHerb"
)
# file = URI.open('https://s3.images-iherb.com/brm/brm11462/w/3.jpg')
# product6.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product6.product = product
# product6.save
p product6

product7 = Product.create(
  name: 'The Bridge Natural Bio Rice Drink',
  description: 'The Bridge rice milk is a completely vegetable drink, issued from organically grown Italian rice, of pleasant taste and excellent digestibility also for babies.',
  price: 13,
  category: 'Dairy free',
  quantity: 1,
  supplier_country: 'Italy',
  calories: 47,
  macros: ['20', '30', '50'],
  shop_name: "iHerb"
)
# file = URI.open('https://s3.images-iherb.com/brm/brm11462/w/3.jpg')
# product7.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product7.product = product
# product7.save
p product7

product8 = Product.create(
  name: 'The Bridge Natural Bio Rice Drink',
  description: 'The Bridge rice milk is a completely vegetable drink, issued from organically grown Italian rice, of pleasant taste and excellent digestibility also for babies.',
  price: 13,
  category: 'Dairy free',
  quantity: 1,
  supplier_country: 'Italy',
  calories: 47,
  macros: ['20', '30', '50'],
  shop_name: "iHerb"
)
# file = URI.open('https://s3.images-iherb.com/brm/brm11462/w/3.jpg')
# product8.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product8.product = product
# product8.save
p product8

product9 = Product.create(
  name: 'The Bridge Natural Bio Rice Drink',
  description: 'The Bridge rice milk is a completely vegetable drink, issued from organically grown Italian rice, of pleasant taste and excellent digestibility also for babies.',
  price: 13,
  category: 'Dairy free',
  quantity: 1,
  supplier_country: 'Italy',
  calories: 47,
  macros: ['20', '30', '50'],
  shop_name: "iHerb"
)
# file = URI.open('https://s3.images-iherb.com/brm/brm11462/w/3.jpg')
# product9.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product9.product = product
# product9.save
p product9

product10 = Product.create(
  name: 'The Bridge Natural Bio Rice Drink',
  description: 'The Bridge rice milk is a completely vegetable drink, issued from organically grown Italian rice, of pleasant taste and excellent digestibility also for babies.',
  price: 13,
  category: 'Dairy free',
  quantity: 1,
  supplier_country: 'Italy',
  calories: 47,
  macros: ['20', '30', '50'],
  shop_name: "iHerb"
)
# file = URI.open('https://s3.images-iherb.com/brm/brm11462/w/3.jpg')
# product10.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product10.product = product
# product10.save
p product10

product11 = Product.create(
  name: 'The Bridge Natural Bio Rice Drink',
  description: 'The Bridge rice milk is a completely vegetable drink, issued from organically grown Italian rice, of pleasant taste and excellent digestibility also for babies.',
  price: 13,
  category: 'Dairy free',
  quantity: 1,
  supplier_country: 'Italy',
  calories: 47,
  macros: ['20', '30', '50'],
  shop_name: "iHerb"
)
# file = URI.open('https://s3.images-iherb.com/brm/brm11462/w/3.jpg')
# product11.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product11.product = product
# product11.save
p product11

product12 = Product.create(
  name: 'The Bridge Natural Bio Rice Drink',
  description: 'The Bridge rice milk is a completely vegetable drink, issued from organically grown Italian rice, of pleasant taste and excellent digestibility also for babies.',
  price: 13,
  category: 'Dairy free',
  quantity: 1,
  supplier_country: 'Italy',
  calories: 47,
  macros: ['20', '30', '50'],
  shop_name: "iHerb"
)
# file = URI.open('https://s3.images-iherb.com/brm/brm11462/w/3.jpg')
# product12.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product12.product = product
# product12.save
p product12

product13 = Product.create(
  name: 'The Bridge Natural Bio Rice Drink',
  description: 'The Bridge rice milk is a completely vegetable drink, issued from organically grown Italian rice, of pleasant taste and excellent digestibility also for babies.',
  price: 13,
  category: 'Dairy free',
  quantity: 1,
  supplier_country: 'Italy',
  calories: 47,
  macros: ['20', '30', '50'],
  shop_name: "iHerb"
)
# file = URI.open('https://s3.images-iherb.com/brm/brm11462/w/3.jpg')
# product13.photos.attach(io: file, filename: 'pancake', content_type: 'image/jpg')
# product13.product = product
# product13.save
p product13
