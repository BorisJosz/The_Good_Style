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
  { gender: "men",
    target_photo:'http://res.cloudinary.com/megednazednav/image/upload/v1522441046/men.png',
}
)

TargetAudience.create!(
  { gender: "women",
  target_photo: 'http://res.cloudinary.com/megednazednav/image/upload/v1522441045/women.png',
}
)

TargetAudience.create!(
  {gender: "kids",
  target_photo: "http://res.cloudinary.com/megednazednav/image/upload/v1522441049/kids.png",
}
)

# generate user
puts 'creating users'
user = User.create!(
  { name: 'John Smith',
    address: 'White House, US of A',
    telephone: '911',
    email: 'John.Smith@gmail.com',
    photo: 'http://d3trabu2dfbdfb.cloudfront.net/8/9/8916142_300x300_1.jpeg',
    password: '123456',
    password_confirmation: '123456'
})

# generate brand
puts 'creating brands'
brand = Brand.create!(
  { name: 'Fabbrikka',
    logo: 'https://i.pinimg.com/avatars/fabbrikka_1504642575_280.jpg',
    address: 'Belgium, Brussels',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    url:'https://fabbrikka.com/',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/59651b4acd0f68b5392996c7/1501015849713/?format=1000w',
    user: User.all.sample,
})


# generate categories
puts 'creating product categories'
ProductCategory.create!(
{
  category: "Jeans",
})

ProductCategory.create!(
{
  category: "T-shirt",
})

ProductCategory.create!(
{
  category: "Socks",
})

#generate sizes

puts 'creating sizes'
Size.create!(
{
  size: "XS",
})

Size.create!(
{
  size: "S",
})

Size.create!(
{
  size: "M",
})

Size.create!(
{
  size: "L",
})

Size.create!(
{
  size: "XL",
})

#generate colors
puts 'creating colors'
Color.create!(
{
  color: "red",
})

Color.create!(
{
  color: "blue",
})

Color.create!(
{
  color: "green",
})

Color.create!(
{
  color: "black",
})

Color.create!(
{
  color: "white",
})


# generate products
puts 'creating products'

products = []

products << Product.create!(
  {
    target_audience: TargetAudience.where(gender:"women").first,
    name: 'White blouse',
    description: 'Lovely light dress, perfect for summer!',
    price: '80.00',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/544ea656e4b07de01f73d3c5/59600d1859cc68c19ada7262/1515096769963/ethical%2Bbrands%2Buk.png?format=2500w',
    brand: Brand.all.sample,
    product_category: ProductCategory.all.sample,
  })

products <<  Product.create!(
  {
    target_audience: TargetAudience.where(gender:"women").first,
    name: 'Comfy sweater',
    description: 'Straight from India',
    price: '60.50',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/596519e915d5db63fc7384bd/1501015792187/?format=1000w',
    brand: Brand.all.sample,
    product_category: ProductCategory.all.sample,
  })

products << Product.create!(
  {
    target_audience: TargetAudience.where(gender:"women").first,
    name: "Skirt in Scuba",
    description: "A simple yet elegant choice that fits everyday occasion",
    price: "170.00",
    image: "http://res.cloudinary.com/megednazednav/image/upload/v1522659696/ASOS_DESIGN_midi_prom_skirt_in_scuba.jpg",
    brand: Brand.all.sample,
    product_category: ProductCategory.all.sample,
  })

  products << Product.create!(
    {
      target_audience: TargetAudience.where(gender:"women").first,
      name: "Wool Jacket",
      description: "Put it on and this superb red wool jacket will make you smile. Models are not allowed to.",
      price: "150.00",
      image: "http://res.cloudinary.com/megednazednav/image/upload/v1522658600/jacket_wool.jpg",
      brand: Brand.all.sample,
      product_category: ProductCategory.all.sample,
    })

  products << Product.create!(
    {
      target_audience: TargetAudience.where(gender:"women").first,
      name: "Simple Top",
      description: "This simple top will be a great addition to your wardrobe",
      price: "50.00",
      image: "http://res.cloudinary.com/megednazednav/image/upload/v1522659696/burgundy_top.jpg",
      brand: Brand.all.sample,
      product_category: ProductCategory.all.sample,
    })

  products << Product.create!(
    {
      target_audience: TargetAudience.where(gender:"women").first,
      name: "Summer Dress",
      description: "The perfect dress for your summer. So light you will not feel it",
      price: "80.00",
      image: "http://res.cloudinary.com/megednazednav/image/upload/v1522659696/9129624-1-multi.jpg",
      brand: Brand.all.sample,
      product_category: ProductCategory.all.sample,
    })

  products << Product.create!(
    {
      target_audience: TargetAudience.where(gender:"women").first,
      name: "Nude Blazer",
      description: "A splendid nude blazer like no other",
      price: "90.00",
      image: "http://res.cloudinary.com/megednazednav/image/upload/v1522659696/9033390-1-nude.jpg",
      brand: Brand.all.sample,
      product_category: ProductCategory.all.sample,
    })

  products << Product.create!(
    {
      target_audience: TargetAudience.where(gender:"women").first,
      name: "Long Shirt",
      description: "This long shirt will change how you see shirts",
      price: "105.00",
      image: "http://res.cloudinary.com/megednazednav/image/upload/v1522660822/MUJ-T4384-BLACK.jpg",
      brand: Brand.all.sample,
      product_category: ProductCategory.all.sample,
    })

  products << Product.create!(
    {
      target_audience: TargetAudience.where(gender:"women").first,
      name: "Dark Jeans",
      description: "Slim fit jeans that will fit you like a glove or like jeans",
      price: "55.00",
      image: "http://res.cloudinary.com/megednazednav/image/upload/v1522660822/MDN-P8212-UTILITYBLUE.jpg",
      brand: Brand.all.sample,
      product_category: ProductCategory.all.sample,
    })

  products << Product.create!(
    {
      target_audience: TargetAudience.where(gender:"women").first,
      name: "White Shirt",
      description: "Cozy white shit that will comfort you in every situation",
      price: "70.00",
      image: "http://res.cloudinary.com/megednazednav/image/upload/v1522660822/LAW-T4383-WHITE.jpg",
      brand: Brand.all.sample,
      product_category: ProductCategory.all.sample,
    })

  products << Product.create!(
    {
      target_audience: TargetAudience.where(gender:"women").first,
      name: "Legacy Top",
      description: "Simple top that fits with almost anything",
      price: "120.00",
      image: "http://res.cloudinary.com/megednazednav/image/upload/v1522660822/S8TK-J4801M-245-Legacy.jpg",
      brand: Brand.all.sample,
      product_category: ProductCategory.all.sample,
    }
  )

products << Product.create!(
  {
    target_audience: TargetAudience.where(gender:"women").first,
    name: 'Casual dress',
    description: 'Made with sustainable materials at heart, a comfortable and light dress to wear on any day',
    price: '120.00',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/59651a66ebbd1a5c3be28b08/1499798126449/?format=2500w',
    brand: Brand.all.sample,
    product_category: ProductCategory.all.sample,
  })

products << Product.create!(
  {
    target_audience: TargetAudience.where(gender:"women").first,
    name: 'Simple & Sexy',
    description: 'Wow your partner in this simple yet elegant dress',
    price: '85.00',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/5977b1e02e69cffa18f371ec/1501016556294/?format=750w',
    brand: Brand.all.sample,
    product_category: ProductCategory.all.sample,
  })

products << Product.create!(
  {
    target_audience: TargetAudience.where(gender:"women").first,
    name: 'White ensemble',
    description: 'This pair of shorts and t-shirt were made for you',
    price: '280.00',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/59651af83e00be66d5f7b256/1499798296479/?format=750w',
    brand: Brand.all.sample,
    product_category: ProductCategory.all.sample,
  })

products << Product.create!(
  {
    target_audience: TargetAudience.where(gender:"women").first,
    name: 'Lovely pink-ish',
    description: 'Arboring a splendid rose beige color, this dress is sure to turn heads',
    price: '50.99',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/59651b252e69cf0722dbac40/1499798319087/?format=1000w',
    brand: Brand.all.sample,
    product_category: ProductCategory.all.sample,
  })

products << Product.create!(
  {
    target_audience: TargetAudience.where(gender:"women").first,
    name: 'Colorful dress',
    description: 'Why not bring some colors to your style with these superbe items',
    price: '90.00',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/59651b4acd0f68b5392996c7/1501015849713/?format=1000w',
    brand: Brand.all.sample,
    product_category: ProductCategory.all.sample,
  })

#generate sustainability infos

puts 'generating sustainability infos'

SustainabilityInfo.create!(
{
  sustainability_class: 'materials',
  description: 'Only organic cotton is used to create this beautiful piece, which makes it super soft and cuddly',
  rating: 5,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/thread_1.svg',
  product: Product.where(name:"Colorful dress").first.id,
  })

SustainabilityInfo.create!(
{
  sustainability_class: 'people',
  description: 'The people that made this shirt are paid a very decent wage and work as self employed seamstresses',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/happy-man_1.svg',
  product_id: Product.where(name:"Colorful dress").first,
  })

SustainabilityInfo.create!(
{
  sustainability_class: 'distance',
  description: 'This product is made in India',
  rating: 2,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679977/truck-icon_1.svg',
  product: Product.where(name:"Colorful dress").first,
  })

SustainabilityInfo.create!(
{
  sustainability_class: 'workplace',
  description: 'This piece was created in a small workshop in the center of Barcelona by a seamstress named Samira',
  rating: 4,
  icon: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_4.svg',
  icon_pale: 'http://res.cloudinary.com/megednazednav/image/upload/v1522679976/sewing-machine_5.svg',
  product: Product.where(name:"Colorful dress").first,
  })

#generating product variations
puts 'creating product variations'
products.each do |product|
  Color.all.each do |color|
    Size.all.each do |size|
    ProductVariation.create!(
    {
      product: product,
      color: color,
      size: size,
    })
  end
end
end

