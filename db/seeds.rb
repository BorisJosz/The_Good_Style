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
  name: 'John Smith',
  address: 'White House, US of A',
  telephone: '911',
  email: 'John.Smith@gmail.com',
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

# generate categories
puts 'creating product categories'
ProductCategory.create!(
  category: 'Blouse'
)

ProductCategory.create!(
  category: 'Dress'
)

ProductCategory.create!(
  category: 'Ensemble'
)

ProductCategory.create!(
  category: 'Jacket'
)

ProductCategory.create!(
  category: 'Jeans'
)

ProductCategory.create!(
  category: 'Shirt'
)

ProductCategory.create!(
  category: 'Skirt'
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
  size: 'XL'
)

Size.create!(
  size: 'L'
)

Size.create!(
  size: 'M'
)

Size.create!(
  size: 'S'
)

Size.create!(
  size: 'XS'
)

# generate colors
puts 'creating colors'
Color.create!(
  color: 'red'
)

Color.create!(
  color: 'blue'
)

Color.create!(
  color: 'green'
)

Color.create!(
  color: 'black'
)

Color.create!(
  color: 'white'
)

# generate products
puts 'creating products'

products = []

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Legacy Top',
  description: 'Simple top that fits with almost anything',
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
  name: 'Casual dress',
  description: 'Made with sustainable materials at heart, a comfortable and light dress to wear on any day',
  price: '120.00',
  image: 'https://i.pinimg.com/564x/3d/db/a0/3ddba07c3663055477556a0988bf5c77.jpg',
  image2: 'https://i.pinimg.com/564x/3d/db/a0/3ddba07c3663055477556a0988bf5c77.jpg',
  image3: 'https://i.pinimg.com/564x/3d/db/a0/3ddba07c3663055477556a0988bf5c77.jpg',
  image4: 'https://i.pinimg.com/564x/3d/db/a0/3ddba07c3663055477556a0988bf5c77.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category:'Sweater').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Simple & Sexy',
  description: 'Wow your partner in this simple yet elegant dress',
  price: '85.00',
  image: 'https://i.pinimg.com/564x/a8/c3/3b/a8c33b538c2e8a50b84b4c7ed91af58b.jpg',
  image2: 'https://i.pinimg.com/564x/a8/c3/3b/a8c33b538c2e8a50b84b4c7ed91af58b.jpg',
  image3: 'https://i.pinimg.com/564x/a8/c3/3b/a8c33b538c2e8a50b84b4c7ed91af58b.jpg',
  image4: 'https://i.pinimg.com/564x/a8/c3/3b/a8c33b538c2e8a50b84b4c7ed91af58b.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Skirt').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Skirt in Scuba',
  description: 'A simple yet elegant choice that fits everyday occasion',
  price: '170.00',
  image: 'https://res.cloudinary.com/megednazednav/image/upload/c_scale,w_600/v1522838764/DSC00489_copia.jpg',
  image2: 'https://res.cloudinary.com/megednazednav/image/upload/c_scale,w_600/v1522838764/DSC00489_copia.jpg',
  image3: 'https://res.cloudinary.com/megednazednav/image/upload/c_scale,w_600/v1522838764/DSC00489_copia.jpg',
  image4: 'https://res.cloudinary.com/megednazednav/image/upload/c_scale,w_600/v1522838764/DSC00489_copia.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Skirt').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'White ensemble',
  description: 'This pair of shorts and t-shirt were made for you',
  price: '280.00',
  image: 'https://i.pinimg.com/564x/c5/f0/63/c5f06323ef13e33b9556930ffc8f1059.jpg',
  image2: 'https://i.pinimg.com/564x/c5/f0/63/c5f06323ef13e33b9556930ffc8f1059.jpg',
  image3: 'https://i.pinimg.com/564x/c5/f0/63/c5f06323ef13e33b9556930ffc8f1059.jpg',
  image4: 'https://i.pinimg.com/564x/c5/f0/63/c5f06323ef13e33b9556930ffc8f1059.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Ensemble').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Comfy sweater',
  description: 'The best sweater ever. Not lying.',
  price: '60.50',
  image: 'http://res.cloudinary.com/megednazednav/image/upload/v1522778486/DSC00051_copia.jpg',
  image2: 'https://res.cloudinary.com/megednazednav/image/upload/c_scale,w_260/v1522778532/DSC00068_copia.jpg',
  image3: 'http://res.cloudinary.com/megednazednav/image/upload/v1522778256/DSC00039_copia.jpg',
  image4: 'http://res.cloudinary.com/megednazednav/image/upload/c_scale,w_492/v1522838652/DSC00660_copia.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Sweater').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Lovely pink-ish',
  description: 'Arboring a splendid rose beige color, this dress is sure to turn heads',
  price: '50.99',
  image: 'https://i.pinimg.com/564x/0e/b2/ce/0eb2cea8a46fbbdb0fc1491e477c35ff.jpg',
  image2: 'https://i.pinimg.com/564x/0e/b2/ce/0eb2cea8a46fbbdb0fc1491e477c35ff.jpg',
  image3: 'https://i.pinimg.com/564x/0e/b2/ce/0eb2cea8a46fbbdb0fc1491e477c35ff.jpg',
  image4: 'https://i.pinimg.com/564x/0e/b2/ce/0eb2cea8a46fbbdb0fc1491e477c35ff.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Dress').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Colorful dress',
  description: 'Why not bring some colors to your style with these superbe items',
  price: '90.00',
  image: 'https://i.pinimg.com/564x/c1/85/1d/c1851d32d78f7290afd3474425a609ef.jpg',
  image2: 'https://i.pinimg.com/564x/c1/85/1d/c1851d32d78f7290afd3474425a609ef.jpg',
  image3: 'https://i.pinimg.com/564x/c1/85/1d/c1851d32d78f7290afd3474425a609ef.jpg',
  image4: 'https://i.pinimg.com/564x/c1/85/1d/c1851d32d78f7290afd3474425a609ef.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Dress').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'White blouse',
  description: 'Lovely light dress, perfect for summer!',
  price: '80.00',
  image: 'https://i.pinimg.com/564x/b8/a6/52/b8a652b00f4c725a393f26de42db37f7.jpg',
  image2: 'https://i.pinimg.com/564x/b8/a6/52/b8a652b00f4c725a393f26de42db37f7.jpg',
  image3: 'https://i.pinimg.com/564x/b8/a6/52/b8a652b00f4c725a393f26de42db37f7.jpg',
  image4: 'https://i.pinimg.com/564x/b8/a6/52/b8a652b00f4c725a393f26de42db37f7.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Blouse').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Wool Jacket',
  description: 'Put it on and this superb red wool jacket will make you smile. Models are not allowed to.',
  price: '150.00',
  image: 'https://i.pinimg.com/564x/25/7f/66/257f66c1b089a40a3499cefabfa44a34.jpg',
  image2: 'https://i.pinimg.com/564x/25/7f/66/257f66c1b089a40a3499cefabfa44a34.jpg',
  image3: 'https://i.pinimg.com/564x/25/7f/66/257f66c1b089a40a3499cefabfa44a34.jpg',
  image4: 'https://i.pinimg.com/564x/25/7f/66/257f66c1b089a40a3499cefabfa44a34.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Jacket').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Simple Top',
  description: 'This simple top will be a great addition to your wardrobe',
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
  name: 'Summer Dress',
  description: 'The perfect dress for your summer. So light you will not feel it',
  price: '80.00',
  image: 'https://i.pinimg.com/564x/86/ae/07/86ae07d1f124ee14cd2ce8dd8ce72f52.jpg',
  image2: 'https://i.pinimg.com/564x/86/ae/07/86ae07d1f124ee14cd2ce8dd8ce72f52.jpg',
  image3: 'https://i.pinimg.com/564x/86/ae/07/86ae07d1f124ee14cd2ce8dd8ce72f52.jpg',
  image4: 'https://i.pinimg.com/564x/86/ae/07/86ae07d1f124ee14cd2ce8dd8ce72f52.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Dress').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Nude Blazer',
  description: 'A splendid nude blazer like no other',
  price: '90.00',
  image: 'https://i.pinimg.com/564x/b8/83/7a/b8837a591b108fbe7edadb6c0f7d2f40.jpg',
  image2: 'https://i.pinimg.com/564x/b8/83/7a/b8837a591b108fbe7edadb6c0f7d2f40.jpg',
  image3: 'https://i.pinimg.com/564x/b8/83/7a/b8837a591b108fbe7edadb6c0f7d2f40.jpg',
  image4: 'https://i.pinimg.com/564x/b8/83/7a/b8837a591b108fbe7edadb6c0f7d2f40.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Jacket').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Long Shirt',
  description: 'This long shirt will change how you see shirts',
  price: '105.00',
  image: 'https://i.pinimg.com/564x/95/af/f9/95aff96d15f96b8ae7263ee0212a3904.jpg',
  image2: 'https://i.pinimg.com/564x/95/af/f9/95aff96d15f96b8ae7263ee0212a3904.jpg',
  image3: 'https://i.pinimg.com/564x/95/af/f9/95aff96d15f96b8ae7263ee0212a3904.jpg',
  image4: 'https://i.pinimg.com/564x/95/af/f9/95aff96d15f96b8ae7263ee0212a3904.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Shirt').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'Dark Jeans',
  description: 'Slim fit jeans that will fit you like a glove or like jeans',
  price: '55.00',
  image: 'https://i.pinimg.com/564x/48/40/9d/48409de9f500edbe6c38dd364f2ce1f4.jpg',
  image2: 'https://i.pinimg.com/564x/48/40/9d/48409de9f500edbe6c38dd364f2ce1f4.jpg',
  image3: 'https://i.pinimg.com/564x/48/40/9d/48409de9f500edbe6c38dd364f2ce1f4.jpg',
  image4: 'https://i.pinimg.com/564x/48/40/9d/48409de9f500edbe6c38dd364f2ce1f4.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Jeans').first,
)

products << Product.create!(
  target_audience: TargetAudience.where(gender: 'women').first,
  name: 'White Shirt',
  description: 'Cozy white shit that will comfort you in every situation',
  price: '70.00',
  image: 'https://i.pinimg.com/564x/e3/ba/0c/e3ba0c62bc4e63b9b0543c3598778325.jpg',
  image2: 'https://i.pinimg.com/564x/e3/ba/0c/e3ba0c62bc4e63b9b0543c3598778325.jpg',
  image3: 'https://i.pinimg.com/564x/e3/ba/0c/e3ba0c62bc4e63b9b0543c3598778325.jpg',
  image4: 'https://i.pinimg.com/564x/e3/ba/0c/e3ba0c62bc4e63b9b0543c3598778325.jpg',
  brand: Brand.all.sample,
  product_category: ProductCategory.where(category: 'Shirt').first,
)

# generate sustainability infos

puts 'generating sustainability infos'

SustainabilityInfo.create!(
  sustainability_class: 'materials',
  description: 'Only organic cotton is used to create this beautiful piece, which makes it super soft and cuddly',
  rating: 5,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread_1.svg',
  product: Product.where(name: 'Comfy sweater').first
)

SustainabilityInfo.create!(
  sustainability_class: 'people',
  description: 'The people that made this shirt are paid a very decent wage and work as self employed seamstresses',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man_1.svg',
  product: Product.where(name: 'Comfy sweater').first
)

SustainabilityInfo.create!(
  sustainability_class: 'distance',
  description: 'This product is made in India',
  rating: 2,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon_1.svg',
  product: Product.where(name: 'Comfy sweater').first
)

SustainabilityInfo.create!(
  sustainability_class: 'workplace',
  description: 'This piece was created in a small workshop in the center of Barcelona by a seamstress named Samira',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_4.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_5.svg',
  product: Product.where(name: 'Comfy sweater').first
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
