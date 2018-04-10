# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'starting the seeds'

SustainabilityInfo.destroy_all
ProductVariation.destroy_all
TargetAudience.destroy_all
Brand.destroy_all

User.destroy_all
Product.destroy_all
Color.destroy_all
Size.destroy_all
ProductCategory.destroy_all

# generate target_audiences
puts 'target audiences'
TargetAudience.create!(
  gender: 'men',
  target_photo: 'http://res.cloudinary.com/megednazednav/image/upload/v1522441046/men.png'
)

TargetAudience.create!(
  gender: 'women',
  target_photo: 'http://res.cloudinary.com/megednazednav/image/upload/v1522441045/women.png'
)

TargetAudience.create!(
  gender: 'kids',
  target_photo: 'http://res.cloudinary.com/megednazednav/image/upload/v1522441049/kids.png'
)

# generate user
puts 'creating users'
user = User.create!(

  name: 'Meg Vandezande',
  address: 'White House, US of A',
  telephone: '911',
  email: 'meg.vandezande@gmail.com',

  photo: 'http://d3trabu2dfbdfb.cloudfront.net/8/9/8916142_300x300_1.jpeg',
  password: '123456',
  password_confirmation: '123456'
)

# generate brand
puts 'creating brands'
brand = Brand.create!(
  name: 'Fabbrikka',
  logo: 'http://res.cloudinary.com/megednazednav/image/upload/v1522787069/logofabbrikka.png',
  address: 'Belgium, Brussels',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  url: 'https://fabbrikka.com/',
  image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/59651b4acd0f68b5392996c7/1501015849713/?format=1000w',
  user: User.all.sample
)

brand = Brand.create!(
  name: "Jan 'N June",
  logo: 'http://res.cloudinary.com/megednazednav/image/upload/v1522787069/logofabbrikka.png',
  address: 'Belgium, Brussels',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  url: 'https://fabbrikka.com/',
  image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/59651b4acd0f68b5392996c7/1501015849713/?format=1000w',
  user: User.all.sample
)

brand = Brand.create!(
  name: "BYEM",
  logo: 'http://res.cloudinary.com/megednazednav/image/upload/v1522787069/logofabbrikka.png',
  address: 'Belgium, Brussels',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  url: 'https://fabbrikka.com/',
  image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/59651b4acd0f68b5392996c7/1501015849713/?format=1000w',
  user: User.all.sample
)

brand = Brand.create!(
  name: "Frieda Sand",
  logo: 'http://res.cloudinary.com/megednazednav/image/upload/v1522787069/logofabbrikka.png',
  address: 'Belgium, Brussels',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  url: 'https://fabbrikka.com/',
  image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/59651b4acd0f68b5392996c7/1501015849713/?format=1000w',
  user: User.all.sample
)


# generate categories
puts 'creating product categories'

ProductCategory.create!(
  category: 'Dress'
)

ProductCategory.create!(
  category: 'Ensemble'
)

ProductCategory.create!(
  category: 'Sweater'
)

ProductCategory.create!(
  category: 'Top'
)

ProductCategory.create!(
  category: 'Trousers'
)

# generate sizes

puts 'creating sizes'
Size.create!(
  size: 'XS'
)

Size.create!(
  size: 'S'
)

Size.create!(
  size: 'M'
)

Size.create!(
  size: 'L'
)

Size.create!(
  size: 'XL'
)

# generate colors
puts 'creating colors'
Color.create!(
  color: 'white'
)

Color.create!(
  color: 'grey'
)

Color.create!(
  color: 'black'
)


# generate products
puts 'creating products'

products = []

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Killer Shirt',
  description: "Zanna is a spacey sweater with a fun detail on each shoulder.
Our sweaters are made of a super soft GOTS-certified fabric, that consists of 66% organic cotton and 34% recycled polyester. This makes them super soft and cuddly. This sweater is very easy to combine with any trousers or pair of jeans. Our model is 1m75 tall and wears size S.",
  price: '120.00',
  image: 'https://i.pinimg.com/564x/96/56/3e/96563e0a11b80385d0d7985f5407cd0e.jpg',
  image2: 'https://i.pinimg.com/564x/96/56/3e/96563e0a11b80385d0d7985f5407cd0e.jpg',
  image3: 'https://i.pinimg.com/564x/96/56/3e/96563e0a11b80385d0d7985f5407cd0e.jpg',
  image4: 'https://i.pinimg.com/564x/96/56/3e/96563e0a11b80385d0d7985f5407cd0e.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category:'Top').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Casual Deux-pièce',
  description: "Zanna is a spacey sweater with a fun detail on each shoulder.
Our sweaters are made of a super soft GOTS-certified fabric, that consists of 66% organic cotton and 34% recycled polyester. This makes them super soft and cuddly. This sweater is very easy to combine with any trousers or pair of jeans. Our model is 1m75 tall and wears size S.",
  price: '140.00',
  image: 'https://i.pinimg.com/564x/3d/db/a0/3ddba07c3663055477556a0988bf5c77.jpg',
  image2: 'https://i.pinimg.com/564x/3d/db/a0/3ddba07c3663055477556a0988bf5c77.jpg',
  image3: 'https://i.pinimg.com/564x/3d/db/a0/3ddba07c3663055477556a0988bf5c77.jpg',
  image4: 'https://i.pinimg.com/564x/3d/db/a0/3ddba07c3663055477556a0988bf5c77.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category:'Ensemble').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Wide Trousers',
  description: "Zanna is a spacey sweater with a fun detail on each shoulder.
Our sweaters are made of a super soft GOTS-certified fabric, that consists of 66% organic cotton and 34% recycled polyester. This makes them super soft and cuddly. This sweater is very easy to combine with any trousers or pair of jeans. Our model is 1m75 tall and wears size S.",
  price: '85.00',
  image: 'https://i.pinimg.com/564x/a8/c3/3b/a8c33b538c2e8a50b84b4c7ed91af58b.jpg',
  image2: 'https://i.pinimg.com/564x/a8/c3/3b/a8c33b538c2e8a50b84b4c7ed91af58b.jpg',
  image3: 'https://i.pinimg.com/564x/a8/c3/3b/a8c33b538c2e8a50b84b4c7ed91af58b.jpg',
  image4: 'https://i.pinimg.com/564x/a8/c3/3b/a8c33b538c2e8a50b84b4c7ed91af58b.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Trousers').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Fun T-shirt',
  description: "Zanna is a spacey sweater with a fun detail on each shoulder.
Our sweaters are made of a super soft GOTS-certified fabric, that consists of 66% organic cotton and 34% recycled polyester. This makes them super soft and cuddly. This sweater is very easy to combine with any trousers or pair of jeans. Our model is 1m75 tall and wears size S.",
  price: '39.00',
  image: 'https://res.cloudinary.com/megednazednav/image/upload/c_scale,w_600/v1522838764/DSC00489_copia.jpg',
  image2: 'https://res.cloudinary.com/megednazednav/image/upload/c_scale,w_600/v1522838764/DSC00489_copia.jpg',
  image3: 'https://res.cloudinary.com/megednazednav/image/upload/c_scale,w_600/v1522838764/DSC00489_copia.jpg',
  image4: 'https://res.cloudinary.com/megednazednav/image/upload/c_scale,w_600/v1522838764/DSC00489_copia.jpg',
  brand: Brand.where(name: 'Fabbrikka').first,
  product_category: ProductCategory.where(category: 'Top').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'White ensemble',
  description: "Zanna is a spacey sweater with a fun detail on each shoulder.
Our sweaters are made of a super soft GOTS-certified fabric, that consists of 66% organic cotton and 34% recycled polyester. This makes them super soft and cuddly. This sweater is very easy to combine with any trousers or pair of jeans. Our model is 1m75 tall and wears size S.",
  price: '180.00',
  image: 'https://i.pinimg.com/564x/c5/f0/63/c5f06323ef13e33b9556930ffc8f1059.jpg',
  image2: 'https://i.pinimg.com/564x/c5/f0/63/c5f06323ef13e33b9556930ffc8f1059.jpg',
  image3: 'https://i.pinimg.com/564x/c5/f0/63/c5f06323ef13e33b9556930ffc8f1059.jpg',
  image4: 'https://i.pinimg.com/564x/c5/f0/63/c5f06323ef13e33b9556930ffc8f1059.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Ensemble').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Spacey sweater',
  description: "Zanna is a spacey sweater with a fun detail on each shoulder.
Our sweaters are made of a super soft GOTS-certified fabric, that consists of 66% organic cotton and 34% recycled polyester. This makes them super soft and cuddly. This sweater is very easy to combine with any trousers or pair of jeans. Our model is 1m75 tall and wears size S.",
  price: '99.00',
  image: 'http://res.cloudinary.com/megednazednav/image/upload/v1522778486/DSC00051_copia.jpg',
  image2: 'https://res.cloudinary.com/megednazednav/image/upload/c_scale,w_260/v1522778532/DSC00068_copia.jpg',
  image3: 'http://res.cloudinary.com/megednazednav/image/upload/v1522778256/DSC00039_copia.jpg',
  image4: 'http://res.cloudinary.com/megednazednav/image/upload/c_scale,w_492/v1522838652/DSC00660_copia.jpg',
  brand: Brand.where(name: 'Fabbrikka').first,
  product_category: ProductCategory.where(category: 'Sweater').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Better Blue Coat',
  description: "Zanna is a spacey sweater with a fun detail on each shoulder.
Our sweaters are made of a super soft GOTS-certified fabric, that consists of 66% organic cotton and 34% recycled polyester. This makes them super soft and cuddly. This sweater is very easy to combine with any trousers or pair of jeans. Our model is 1m75 tall and wears size S.",
  price: '199.00',
  image: 'https://i.pinimg.com/564x/0e/b2/ce/0eb2cea8a46fbbdb0fc1491e477c35ff.jpg',
  image2: 'https://i.pinimg.com/564x/0e/b2/ce/0eb2cea8a46fbbdb0fc1491e477c35ff.jpg',
  image3: 'https://i.pinimg.com/564x/0e/b2/ce/0eb2cea8a46fbbdb0fc1491e477c35ff.jpg',
  image4: 'https://i.pinimg.com/564x/0e/b2/ce/0eb2cea8a46fbbdb0fc1491e477c35ff.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Top').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'White Elegance',
  description: "A classy allrounder, this top made of JanNJune's airy and easy to care for 'Neopren' fabric is easy to combine with classic trousers or to give casual outfits a more polished finish. 3/4 length fluted sleeves, raw edges.",
  price: '90.00',
  image: 'https://i.pinimg.com/564x/c1/85/1d/c1851d32d78f7290afd3474425a609ef.jpg',
  image2: 'https://i.pinimg.com/564x/c1/85/1d/c1851d32d78f7290afd3474425a609ef.jpg',
  image3: 'https://i.pinimg.com/564x/c1/85/1d/c1851d32d78f7290afd3474425a609ef.jpg',
  image4: 'https://i.pinimg.com/564x/c1/85/1d/c1851d32d78f7290afd3474425a609ef.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Top').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Peep-top',
  description: "Mina is a light and versatile wrap blouse jacket made of silky, midnight blue organic cotton sateen. Round neck, that can also be styled as a deep V, flared arms and elegant wrap belt. Wear as a blouse on it's own, or paired with a lighter coloured shirt or T-Shirt underneath.",
  price: '80.00',
  image: 'https://i.pinimg.com/564x/b8/a6/52/b8a652b00f4c725a393f26de42db37f7.jpg',
  image2: 'https://i.pinimg.com/564x/b8/a6/52/b8a652b00f4c725a393f26de42db37f7.jpg',
  image3: 'https://i.pinimg.com/564x/b8/a6/52/b8a652b00f4c725a393f26de42db37f7.jpg',
  image4: 'https://i.pinimg.com/564x/b8/a6/52/b8a652b00f4c725a393f26de42db37f7.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Top').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Elegant T-shirt',
  description: 'Soft black top featuring a small standing collar and mid-length sleeves. Goes well with our Seine Skirt as well as any trouser shape. Flattering for the arms. Made of extremely soft organic cotton jersey.',
  price: '57.00',
  image: 'https://i.pinimg.com/564x/25/7f/66/257f66c1b089a40a3499cefabfa44a34.jpg',
  image2: 'https://i.pinimg.com/564x/25/7f/66/257f66c1b089a40a3499cefabfa44a34.jpg',
  image3: 'https://i.pinimg.com/564x/25/7f/66/257f66c1b089a40a3499cefabfa44a34.jpg',
  image4: 'https://i.pinimg.com/564x/25/7f/66/257f66c1b089a40a3499cefabfa44a34.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Top').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Refined Top',
  description: 'A contemporary take on a classic, this sleeveless, organic cotton top features delicate lace detail around the neckline. It has a little bit of stretch built in, making it supremely comfortable. We love pairing it with a great pair of jeans, or tucked into a pencil skirt for a more elegant look. Designed for longevity and versatility, you’ll be able to style this in a number of ways for many seasons to come.',
  price: '50.00',
  image: 'https://i.pinimg.com/564x/50/dc/d4/50dcd49b0f1d910cab814820d1e9dd34.jpg',
  image2: 'https://i.pinimg.com/564x/50/dc/d4/50dcd49b0f1d910cab814820d1e9dd34.jpg',
  image3: 'https://i.pinimg.com/564x/50/dc/d4/50dcd49b0f1d910cab814820d1e9dd34.jpg',
  image4: 'https://i.pinimg.com/564x/50/dc/d4/50dcd49b0f1d910cab814820d1e9dd34.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Top').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Classic Trousers',
  description: 'Straight, skinny pants designed for a flattering silhouette. High waist, side pockets, no pockets on the back. Hidden zips on the inside of the calves. Ankle length. Classic forever piece that is easy to look after and will stay beautiful for a long time.',
  price: '80.00',
  image: 'https://i.pinimg.com/564x/86/ae/07/86ae07d1f124ee14cd2ce8dd8ce72f52.jpg',
  image2: 'https://i.pinimg.com/564x/86/ae/07/86ae07d1f124ee14cd2ce8dd8ce72f52.jpg',
  image3: 'https://i.pinimg.com/564x/86/ae/07/86ae07d1f124ee14cd2ce8dd8ce72f52.jpg',
  image4: 'https://i.pinimg.com/564x/86/ae/07/86ae07d1f124ee14cd2ce8dd8ce72f52.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Trousers').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Amazing Jumpsuit',
  description: 'The first jumpsuit that is genuinely easy to wear. Zipper at the front, drawstring around the waist, side pockets. We love wearing it with classic heels for drinks and dinner, or flats during the day. ',
  price: '150.00',
  image: 'https://i.pinimg.com/564x/b8/83/7a/b8837a591b108fbe7edadb6c0f7d2f40.jpg',
  image2: 'https://i.pinimg.com/564x/b8/83/7a/b8837a591b108fbe7edadb6c0f7d2f40.jpg',
  image3: 'https://i.pinimg.com/564x/b8/83/7a/b8837a591b108fbe7edadb6c0f7d2f40.jpg',
  image4: 'https://i.pinimg.com/564x/b8/83/7a/b8837a591b108fbe7edadb6c0f7d2f40.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Ensemble').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Long White Cardigan',
  description: 'Comfortably fitting, long cardigan made of an organic cotton knit with pockets. The abstract pattern can be combined in a classic look with black, white and grey pieces, or worn with denim. ',
  price: '105.00',
  image: 'https://i.pinimg.com/564x/95/af/f9/95aff96d15f96b8ae7263ee0212a3904.jpg',
  image2: 'https://i.pinimg.com/564x/95/af/f9/95aff96d15f96b8ae7263ee0212a3904.jpg',
  image3: 'https://i.pinimg.com/564x/95/af/f9/95aff96d15f96b8ae7263ee0212a3904.jpg',
  image4: 'https://i.pinimg.com/564x/95/af/f9/95aff96d15f96b8ae7263ee0212a3904.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Sweater').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Light Blue Top',
  description: 'Delicate top with a silky feel, round neck and pretty details at the shoulders. Very slightly transparent. Great both with jeans as well as a formal look for the office.',
  price: '45.00',
  image: 'https://i.pinimg.com/564x/48/40/9d/48409de9f500edbe6c38dd364f2ce1f4.jpg',
  image2: 'https://i.pinimg.com/564x/48/40/9d/48409de9f500edbe6c38dd364f2ce1f4.jpg',
  image3: 'https://i.pinimg.com/564x/48/40/9d/48409de9f500edbe6c38dd364f2ce1f4.jpg',
  image4: 'https://i.pinimg.com/564x/48/40/9d/48409de9f500edbe6c38dd364f2ce1f4.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Top').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'White Shirt',
  description: "We're partial to a well designed classic shirt, and this one is fast becoming a favourite. With slits up to the waist on either side, this one combines classic design with chic twists. Pair with skinny jeans or a pencil skirt.",
  price: '70.00',
  image: 'https://i.pinimg.com/564x/e3/ba/0c/e3ba0c62bc4e63b9b0543c3598778325.jpg',
  image2: 'https://i.pinimg.com/564x/e3/ba/0c/e3ba0c62bc4e63b9b0543c3598778325.jpg',
  image3: 'https://i.pinimg.com/564x/e3/ba/0c/e3ba0c62bc4e63b9b0543c3598778325.jpg',
  image4: 'https://i.pinimg.com/564x/e3/ba/0c/e3ba0c62bc4e63b9b0543c3598778325.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Top').first,
)

# generate sustainability infos

puts 'generating sustainability infos'

SustainabilityInfo.create!(
  sustainability_class: 'materials',
  description: 'Fabbrikka only works with GOTS certified organic cotton. High quality finishings that ensure you will enjoy your sweater for a long time',
  rating: 5,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread_1.svg',
  product: Product.where(name: 'Spacey sweater').first
)

SustainabilityInfo.create!(
  sustainability_class: 'people',
  description: 'This sweater is made by Samira, a self employed seamstress that has her workshop in the center of Barcelona.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man_1.svg',
  product: Product.where(name: 'Spacey sweater').first
)

SustainabilityInfo.create!(
  sustainability_class: 'distance',
  description: 'This product is made in Barcelona',
  rating: 2,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon_1.svg',
  product: Product.where(name: 'Spacey sweater').first
)

SustainabilityInfo.create!(
  sustainability_class: 'workplace',
  description: 'This piece was created in a small workshop in the center of the city. Since the seamstresses are self-employed, they arrange their working schedule according to their family life.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_4.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_5.svg',
  product: Product.where(name: 'Spacey sweater').first
)

# 2
SustainabilityInfo.create!(
  sustainability_class: 'materials',
  description: 'Fabbrikka only works with GOTS certified organic cotton. High quality finishings that ensure you will enjoy your sweater for a long time',
  rating: 5,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread_1.svg',
  product: Product.where(name: 'Killer Shirt').first
)

SustainabilityInfo.create!(
  sustainability_class: 'people',
  description: 'This sweater is made by Samira, a self employed seamstress that has her workshop in the center of Barcelona.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man_1.svg',
  product: Product.where(name: 'Killer Shirt').first
)

SustainabilityInfo.create!(
  sustainability_class: 'distance',
  description: 'This product is made in Barcelona',
  rating: 2,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon_1.svg',
  product: Product.where(name: 'Killer Shirt').first
)

SustainabilityInfo.create!(
  sustainability_class: 'workplace',
  description: 'This piece was created in a small workshop in the center of the city. Since the seamstresses are self-employed, they arrange their working schedule according to their family life.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_4.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_5.svg',
  product: Product.where(name: 'Killer Shirt').first
)

# 3
SustainabilityInfo.create!(
  sustainability_class: 'materials',
  description: 'Fabbrikka only works with GOTS certified organic cotton. High quality finishings that ensure you will enjoy your sweater for a long time',
  rating: 5,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread_1.svg',
  product: Product.where(name: 'Casual Deux-pièce').first
)

SustainabilityInfo.create!(
  sustainability_class: 'people',
  description: 'This sweater is made by Samira, a self employed seamstress that has her workshop in the center of Barcelona.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man_1.svg',
  product: Product.where(name: 'Casual Deux-pièce').first
)

SustainabilityInfo.create!(
  sustainability_class: 'distance',
  description: 'This product is made in Barcelona',
  rating: 2,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon_1.svg',
  product: Product.where(name: 'Casual Deux-pièce').first
)

SustainabilityInfo.create!(
  sustainability_class: 'workplace',
  description: 'This piece was created in a small workshop in the center of the city. Since the seamstresses are self-employed, they arrange their working schedule according to their family life.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_4.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_5.svg',
  product: Product.where(name: 'Casual Deux-pièce').first
)

# 4
SustainabilityInfo.create!(
  sustainability_class: 'materials',
  description: 'Fabbrikka only works with GOTS certified organic cotton. High quality finishings that ensure you will enjoy your sweater for a long time',
  rating: 5,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread_1.svg',
  product: Product.where(name: 'Wide Trousers').first
)

SustainabilityInfo.create!(
  sustainability_class: 'people',
  description: 'This sweater is made by Samira, a self employed seamstress that has her workshop in the center of Barcelona.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man_1.svg',
  product: Product.where(name: 'Wide Trousers').first
)

SustainabilityInfo.create!(
  sustainability_class: 'distance',
  description: 'This product is made in Barcelona',
  rating: 2,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon_1.svg',
  product: Product.where(name: 'Wide Trousers').first
)

SustainabilityInfo.create!(
  sustainability_class: 'workplace',
  description: 'This piece was created in a small workshop in the center of the city. Since the seamstresses are self-employed, they arrange their working schedule according to their family life.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_4.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_5.svg',
  product: Product.where(name: 'Wide Trousers').first
)
# 5
SustainabilityInfo.create!(
  sustainability_class: 'materials',
  description: 'Fabbrikka only works with GOTS certified organic cotton. High quality finishings that ensure you will enjoy your sweater for a long time',
  rating: 5,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread_1.svg',
  product: Product.where(name: 'Fun T-shirt').first
)

SustainabilityInfo.create!(
  sustainability_class: 'people',
  description: 'This sweater is made by Samira, a self employed seamstress that has her workshop in the center of Barcelona.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man_1.svg',
  product: Product.where(name: 'Fun T-shirt').first
)

SustainabilityInfo.create!(
  sustainability_class: 'distance',
  description: 'This product is made in Barcelona',
  rating: 2,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon_1.svg',
  product: Product.where(name: 'Fun T-shirt').first
)

SustainabilityInfo.create!(
  sustainability_class: 'workplace',
  description: 'This piece was created in a small workshop in the center of the city. Since the seamstresses are self-employed, they arrange their working schedule according to their family life.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_4.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_5.svg',
  product: Product.where(name: 'Fun T-shirt').first
)

# 6
SustainabilityInfo.create!(
  sustainability_class: 'materials',
  description: 'Fabbrikka only works with GOTS certified organic cotton. High quality finishings that ensure you will enjoy your sweater for a long time',
  rating: 5,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread_1.svg',
  product: Product.where(name: 'White ensemble').first
)

SustainabilityInfo.create!(
  sustainability_class: 'people',
  description: 'This sweater is made by Samira, a self employed seamstress that has her workshop in the center of Barcelona.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man_1.svg',
  product: Product.where(name: 'White ensemble').first
)

SustainabilityInfo.create!(
  sustainability_class: 'distance',
  description: 'This product is made in Barcelona',
  rating: 2,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon_1.svg',
  product: Product.where(name: 'White ensemble').first
)

SustainabilityInfo.create!(
  sustainability_class: 'workplace',
  description: 'This piece was created in a small workshop in the center of the city. Since the seamstresses are self-employed, they arrange their working schedule according to their family life.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_4.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_5.svg',
  product: Product.where(name: 'White ensemble').first
)
# 7
SustainabilityInfo.create!(
  sustainability_class: 'materials',
  description: 'Fabbrikka only works with GOTS certified organic cotton. High quality finishings that ensure you will enjoy your sweater for a long time',
  rating: 5,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread_1.svg',
  product: Product.where(name: 'Better Blue Coat').first
)

SustainabilityInfo.create!(
  sustainability_class: 'people',
  description: 'This sweater is made by Samira, a self employed seamstress that has her workshop in the center of Barcelona.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man_1.svg',
  product: Product.where(name: 'Better Blue Coat').first
)

SustainabilityInfo.create!(
  sustainability_class: 'distance',
  description: 'This product is made in Barcelona',
  rating: 2,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon_1.svg',
  product: Product.where(name: 'Better Blue Coat').first
)

SustainabilityInfo.create!(
  sustainability_class: 'workplace',
  description: 'This piece was created in a small workshop in the center of the city. Since the seamstresses are self-employed, they arrange their working schedule according to their family life.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_4.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_5.svg',
  product: Product.where(name: 'Better Blue Coat').first
)
# 8
SustainabilityInfo.create!(
  sustainability_class: 'materials',
  description: 'Fabbrikka only works with GOTS certified organic cotton. High quality finishings that ensure you will enjoy your sweater for a long time',
  rating: 5,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread_1.svg',
  product: Product.where(name: 'White Elegance').first
)

SustainabilityInfo.create!(
  sustainability_class: 'people',
  description: 'This sweater is made by Samira, a self employed seamstress that has her workshop in the center of Barcelona.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man_1.svg',
  product: Product.where(name: 'White Elegance').first
)

SustainabilityInfo.create!(
  sustainability_class: 'distance',
  description: 'This product is made in Barcelona',
  rating: 2,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon_1.svg',
  product: Product.where(name: 'White Elegance').first
)

SustainabilityInfo.create!(
  sustainability_class: 'workplace',
  description: 'This piece was created in a small workshop in the center of the city. Since the seamstresses are self-employed, they arrange their working schedule according to their family life.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_4.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_5.svg',
  product: Product.where(name: 'White Elegance').first
)

# 9
SustainabilityInfo.create!(
  sustainability_class: 'materials',
  description: 'Fabbrikka only works with GOTS certified organic cotton. High quality finishings that ensure you will enjoy your sweater for a long time',
  rating: 5,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread_1.svg',
  product: Product.where(name: 'Peep-top').first
)

SustainabilityInfo.create!(
  sustainability_class: 'people',
  description: 'This sweater is made by Samira, a self employed seamstress that has her workshop in the center of Barcelona.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man_1.svg',
  product: Product.where(name: 'Peep-top').first
)

SustainabilityInfo.create!(
  sustainability_class: 'distance',
  description: 'This product is made in Barcelona',
  rating: 2,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon_1.svg',
  product: Product.where(name: 'Peep-top').first
)

SustainabilityInfo.create!(
  sustainability_class: 'workplace',
  description: 'This piece was created in a small workshop in the center of the city. Since the seamstresses are self-employed, they arrange their working schedule according to their family life.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_4.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_5.svg',
  product: Product.where(name: 'Peep-top').first
)

# 10

SustainabilityInfo.create!(
  sustainability_class: 'materials',
  description: 'Fabbrikka only works with GOTS certified organic cotton. High quality finishings that ensure you will enjoy your sweater for a long time',
  rating: 5,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread_1.svg',
  product: Product.where(name: 'Elegant T-shirt').first
)

SustainabilityInfo.create!(
  sustainability_class: 'people',
  description: 'This sweater is made by Samira, a self employed seamstress that has her workshop in the center of Barcelona.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man_1.svg',
  product: Product.where(name: 'Elegant T-shirt').first
)

SustainabilityInfo.create!(
  sustainability_class: 'distance',
  description: 'This product is made in Barcelona',
  rating: 2,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon_1.svg',
  product: Product.where(name: 'Elegant T-shirt').first
)

SustainabilityInfo.create!(
  sustainability_class: 'workplace',
  description: 'This piece was created in a small workshop in the center of the city. Since the seamstresses are self-employed, they arrange their working schedule according to their family life.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_4.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_5.svg',
  product: Product.where(name: 'Elegant T-shirt').first
)

# 11
SustainabilityInfo.create!(
  sustainability_class: 'materials',
  description: 'Fabbrikka only works with GOTS certified organic cotton. High quality finishings that ensure you will enjoy your sweater for a long time',
  rating: 5,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread_1.svg',
  product: Product.where(name: 'Refined Top').first
)

SustainabilityInfo.create!(
  sustainability_class: 'people',
  description: 'This sweater is made by Samira, a self employed seamstress that has her workshop in the center of Barcelona.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man_1.svg',
  product: Product.where(name: 'Refined Top').first
)

SustainabilityInfo.create!(
  sustainability_class: 'distance',
  description: 'This product is made in Barcelona',
  rating: 2,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon_1.svg',
  product: Product.where(name: 'Refined Top').first
)

SustainabilityInfo.create!(
  sustainability_class: 'workplace',
  description: 'This piece was created in a small workshop in the center of the city. Since the seamstresses are self-employed, they arrange their working schedule according to their family life.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_4.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_5.svg',
  product: Product.where(name: 'Refined Top').first
)

# 12
SustainabilityInfo.create!(
  sustainability_class: 'materials',
  description: 'Fabbrikka only works with GOTS certified organic cotton. High quality finishings that ensure you will enjoy your sweater for a long time',
  rating: 5,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread_1.svg',
  product: Product.where(name: 'Classic Trousers').first
)

SustainabilityInfo.create!(
  sustainability_class: 'people',
  description: 'This sweater is made by Samira, a self employed seamstress that has her workshop in the center of Barcelona.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man_1.svg',
  product: Product.where(name: 'Classic Trousers').first
)

SustainabilityInfo.create!(
  sustainability_class: 'distance',
  description: 'This product is made in Barcelona',
  rating: 2,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon_1.svg',
  product: Product.where(name: 'Classic Trousers').first
)

SustainabilityInfo.create!(
  sustainability_class: 'workplace',
  description: 'This piece was created in a small workshop in the center of the city. Since the seamstresses are self-employed, they arrange their working schedule according to their family life.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_4.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_5.svg',
  product: Product.where(name: 'Classic Trousers').first
)

# 13
SustainabilityInfo.create!(
  sustainability_class: 'materials',
  description: 'Fabbrikka only works with GOTS certified organic cotton. High quality finishings that ensure you will enjoy your sweater for a long time',
  rating: 5,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread_1.svg',
  product: Product.where(name: 'Amazing Jumpsuit').first
)

SustainabilityInfo.create!(
  sustainability_class: 'people',
  description: 'This sweater is made by Samira, a self employed seamstress that has her workshop in the center of Barcelona.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man_1.svg',
  product: Product.where(name: 'Amazing Jumpsuit').first
)

SustainabilityInfo.create!(
  sustainability_class: 'distance',
  description: 'This product is made in Barcelona',
  rating: 2,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon_1.svg',
  product: Product.where(name: 'Amazing Jumpsuit').first
)

SustainabilityInfo.create!(
  sustainability_class: 'workplace',
  description: 'This piece was created in a small workshop in the center of the city. Since the seamstresses are self-employed, they arrange their working schedule according to their family life.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_4.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_5.svg',
  product: Product.where(name: 'Amazing Jumpsuit').first
)
#14
SustainabilityInfo.create!(
  sustainability_class: 'materials',
  description: 'Fabbrikka only works with GOTS certified organic cotton. High quality finishings that ensure you will enjoy your sweater for a long time',
  rating: 5,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread_1.svg',
  product: Product.where(name: 'Long White Cardigan').first
)

SustainabilityInfo.create!(
  sustainability_class: 'people',
  description: 'This sweater is made by Samira, a self employed seamstress that has her workshop in the center of Barcelona.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man_1.svg',
  product: Product.where(name: 'Long White Cardigan').first
)

SustainabilityInfo.create!(
  sustainability_class: 'distance',
  description: 'This product is made in Barcelona',
  rating: 2,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon_1.svg',
  product: Product.where(name: 'Long White Cardigan').first
)

SustainabilityInfo.create!(
  sustainability_class: 'workplace',
  description: 'This piece was created in a small workshop in the center of the city. Since the seamstresses are self-employed, they arrange their working schedule according to their family life.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_4.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_5.svg',
  product: Product.where(name: 'Long White Cardigan').first
)

# 15
SustainabilityInfo.create!(
  sustainability_class: 'materials',
  description: 'Fabbrikka only works with GOTS certified organic cotton. High quality finishings that ensure you will enjoy your sweater for a long time',
  rating: 5,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread_1.svg',
  product: Product.where(name: 'Light Blue Top').first
)

SustainabilityInfo.create!(
  sustainability_class: 'people',
  description: 'This sweater is made by Samira, a self employed seamstress that has her workshop in the center of Barcelona.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man_1.svg',
  product: Product.where(name: 'Light Blue Top').first
)

SustainabilityInfo.create!(
  sustainability_class: 'distance',
  description: 'This product is made in Barcelona',
  rating: 2,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon_1.svg',
  product: Product.where(name: 'Light Blue Top').first
)

SustainabilityInfo.create!(
  sustainability_class: 'workplace',
  description: 'This piece was created in a small workshop in the center of the city. Since the seamstresses are self-employed, they arrange their working schedule according to their family life.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_4.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_5.svg',
  product: Product.where(name: 'Light Blue Top').first
)

# 16
SustainabilityInfo.create!(
  sustainability_class: 'materials',
  description: 'Fabbrikka only works with GOTS certified organic cotton. High quality finishings that ensure you will enjoy your sweater for a long time',
  rating: 5,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread_1.svg',
  product: Product.where(name: 'White Shirt').first
)

SustainabilityInfo.create!(
  sustainability_class: 'people',
  description: 'This sweater is made by Samira, a self employed seamstress that has her workshop in the center of Barcelona.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man_1.svg',
  product: Product.where(name: 'White Shirt').first
)

SustainabilityInfo.create!(
  sustainability_class: 'distance',
  description: 'This product is made in Barcelona',
  rating: 2,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon_1.svg',
  product: Product.where(name: 'White Shirt').first
)

SustainabilityInfo.create!(
  sustainability_class: 'workplace',
  description: 'This piece was created in a small workshop in the center of the city. Since the seamstresses are self-employed, they arrange their working schedule according to their family life.',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_4.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_5.svg',
  product: Product.where(name: 'White Shirt').first
)

# generating product variations
puts 'creating product variations'
products.each do |product|
  Color.all.each do |color|
    Size.all.each do |size|
      ProductVariation.create!(
        product: product,
        color: color,
        size: size
      )
    end
  end
end
