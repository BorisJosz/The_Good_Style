# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'starting the seeds'

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
    target_photo:'https://farm1.staticflickr.com/700/23200390351_86fa303506_b.jpg',
}
)

TargetAudience.create!(
  { gender: "women",
  target_photo: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/544ea656e4b07de01f73d3c5/59600d1859cc68c19ada7262/1515096769963/ethical%2Bbrands%2Buk.png?format=2500w',
}
)

TargetAudience.create!(
  {gender: "kids",
  target_photo: "https://farm2.staticflickr.com/1121/3165569990_bd28a9866a_b.jpg",
}
)

# generate user
puts 'creating users'
user = User.create!(
  { name: 'John Smith',
    address: 'White House, US of A',
    telephone: '911',
    email: 'John.Smith@gmail.com',
    photo: 'https://pbs.twimg.com/profile_images/927353793800388609/JqU3njSZ_400x400.jpg',
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
    target_audience: TargetAudience.all.sample,
    name: 'White blouse',
    description: 'Lovely light dress, perfect for summer!',
    price: '80 €',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/544ea656e4b07de01f73d3c5/59600d1859cc68c19ada7262/1515096769963/ethical%2Bbrands%2Buk.png?format=2500w',
    brand: Brand.all.sample,
    product_category: ProductCategory.all.sample,
    material_info: 'Only organic cotton is used to create this beautiful piece, which makes it super soft and cuddly',
    people_info: 'The people that made this shirt are paid a very decent wage and work as self employed seamstresses',
    location_info: 'All of the products of Fabbrikka are made in Barcelona and shipped from Belgium',
    distance_info: 'This piece was created in a small workshop in the center of Barcelona by a seamstress named Samira',
  })

products <<  Product.create!(
  {
    target_audience: TargetAudience.all.sample,
    name: 'Comfy sweater',
    description: 'Straight from India',
    price: '60 €',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/596519e915d5db63fc7384bd/1501015792187/?format=1000w',
    brand: Brand.all.sample,
    product_category: ProductCategory.all.sample,
    material_info: 'Only organic cotton is used to create this beautiful piece, which makes it super soft and cuddly',
    people_info: 'The people that made this shirt are paid a very decent wage and work as self employed seamstresses',
    location_info: 'All of the products of Fabbrikka are made in Barcelona and shipped from Belgium',
    distance_info: 'This piece was created in a small workshop in the center of Barcelona by a seamstress named Samira',
  })

products << Product.create!(
  {
    target_audience: TargetAudience.all.sample,
    name: 'Casual dress',
    description: 'Made with sustainable materials at heart, a comfortable and light dress to wear on any day',
    price: '120 €',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/59651a66ebbd1a5c3be28b08/1499798126449/?format=2500w',
    brand: Brand.all.sample,
    product_category: ProductCategory.all.sample,
    material_info: 'Only organic cotton is used to create this beautiful piece, which makes it super soft and cuddly',
    people_info: 'The people that made this shirt are paid a very decent wage and work as self employed seamstresses',
    location_info: 'All of the products of Fabbrikka are made in Barcelona and shipped from Belgium',
    distance_info: 'This piece was created in a small workshop in the center of Barcelona by a seamstress named Samira',
  })

products << Product.create!(
  {
    target_audience: TargetAudience.all.sample,
    name: 'Simple & Sexy',
    description: 'Wow your partner in this simple yet elegant dress',
    price: '80 €',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/5977b1e02e69cffa18f371ec/1501016556294/?format=750w',
    brand: Brand.all.sample,
    product_category: ProductCategory.all.sample,
    material_info: 'Only organic cotton is used to create this beautiful piece, which makes it super soft and cuddly',
    people_info: 'The people that made this shirt are paid a very decent wage and work as self employed seamstresses',
    location_info: 'All of the products of Fabbrikka are made in Barcelona and shipped from Belgium',
    distance_info: 'This piece was created in a small workshop in the center of Barcelona by a seamstress named Samira',
  })

products << Product.create!(
  {
    target_audience: TargetAudience.all.sample,
    name: 'White ensemble',
    description: 'This pair of shorts and t-shirt were made for you',
    price: '280 €',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/59651af83e00be66d5f7b256/1499798296479/?format=750w',
    brand: Brand.all.sample,
    product_category: ProductCategory.all.sample,
    material_info: 'Only organic cotton is used to create this beautiful piece, which makes it super soft and cuddly',
    people_info: 'The people that made this shirt are paid a very decent wage and work as self employed seamstresses',
    location_info: 'All of the products of Fabbrikka are made in Barcelona and shipped from Belgium',
    distance_info: 'This piece was created in a small workshop in the center of Barcelona by a seamstress named Samira',
  })

products << Product.create!(
  {
    target_audience: TargetAudience.all.sample,
    name: 'Lovely pink-ish',
    description: 'Arboring a splendid rose beige color, this dress is sure to turn heads',
    price: '50 €',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/59651b252e69cf0722dbac40/1499798319087/?format=1000w',
    brand: Brand.all.sample,
    product_category: ProductCategory.all.sample,
    material_info: 'Only organic cotton is used to create this beautiful piece, which makes it super soft and cuddly',
    people_info: 'The people that made this shirt are paid a very decent wage and work as self employed seamstresses',
    location_info: 'All of the products of Fabbrikka are made in Barcelona and shipped from Belgium',
    distance_info: 'This piece was created in a small workshop in the center of Barcelona by a seamstress named Samira',
  })

products << Product.create!(
  {
    target_audience: TargetAudience.all.sample,
    name: 'Colorful dress',
    description: 'Why not bring some colors to your style with these superbe items',
    price: '90 €',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/59651b4acd0f68b5392996c7/1501015849713/?format=1000w',
    brand: Brand.all.sample,
    product_category: ProductCategory.all.sample,
    material_info: 'Only organic cotton is used to create this beautiful piece, which makes it super soft and cuddly',
    people_info: 'The people that made this shirt are paid a very decent wage and work as self employed seamstresses',
    location_info: 'All of the products of Fabbrikka are made in Barcelona and shipped from Belgium',
    distance_info: 'This piece was created in a small workshop in the center of Barcelona by a seamstress named Samira',
  })

#generating product variations

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

puts 'creating product variations'

