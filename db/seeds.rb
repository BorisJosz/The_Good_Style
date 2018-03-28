# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'starting the seeds'

TargetAudience.destroy_all
Brand.destroy_all
User.destroy_all
Product.destroy_all

# generate target_audiences
puts 'target audience'
TargetAudience.create!(
  { gender: "men",
    target_photo: 'string string',
  }
)

TargetAudience.create!(
  { gender: "women",
  target_photo: "string but women",
}
)

TargetAudience.create!(
  {gender: "kids",
  target_photo: "small string",
}
)

# generate user
puts 'creating users'
user = User.create!(
  { name: 'John Smith',
    address: 'White House, US of A',
    telephone: '911',
    email: 'John.Smith@gmail.com',
    password: '123456',
    password_confirmation: '123456'
})

# generate brand
puts 'creating brands'
brand = Brand.create!(
  { name: 'Fabbrikka',
    address: 'Belgium, Brussels',
    description: 'fashion clothes made with love',
    url:'https://fabbrikka.com/',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/59651b4acd0f68b5392996c7/1501015849713/?format=1000w',
    user: User.all.sample,
})


# generate categories
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


# generate products
puts 'creating products'
Product.create!(
  {
    target_audience: TargetAudience.all.sample,
    name: 'White blouse',
    description: 'Lovely light dress, perfect for summer!',
    price: '80 €',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/544ea656e4b07de01f73d3c5/59600d1859cc68c19ada7262/1515096769963/ethical%2Bbrands%2Buk.png?format=2500w',
    brand: Brand.all.sample,
<<<<<<< HEAD
    product_category: ProductCategory.all.sample
=======
    product_category: ProductCategory.all.sample,
>>>>>>> f28d636a5d26c5a83f598df453f81b6cdaa1c60e
  })

Product.create!(
  {
    target_audience: TargetAudience.all.sample,
    name: 'Comfy sweater',
    description: 'Straight from India',
    price: '60 €',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/596519e915d5db63fc7384bd/1501015792187/?format=1000w',
    brand: Brand.all.sample,
<<<<<<< HEAD
    product_category: ProductCategory.all.sample
=======
    product_category: ProductCategory.all.sample,
>>>>>>> f28d636a5d26c5a83f598df453f81b6cdaa1c60e
  })

Product.create!(
  {
    target_audience: TargetAudience.all.sample,
    name: 'Casual dress',
    description: 'Made with sustainable materials at heart, a comfortable and light dress to wear on any day',
    price: '120 €',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/59651a66ebbd1a5c3be28b08/1499798126449/?format=2500w',
    brand: Brand.all.sample,
<<<<<<< HEAD
    product_category: ProductCategory.all.sample
=======
    product_category: ProductCategory.all.sample,
>>>>>>> f28d636a5d26c5a83f598df453f81b6cdaa1c60e
  })

Product.create!(
  {
    target_audience: TargetAudience.all.sample,
    name: 'Simple & Sexy',
    description: 'Wow your partner in this simple yet elegant dress',
    price: '80 €',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/5977b1e02e69cffa18f371ec/1501016556294/?format=750w',
    brand: Brand.all.sample,
<<<<<<< HEAD
    product_category: ProductCategory.all.sample
=======
    product_category: ProductCategory.all.sample,
>>>>>>> f28d636a5d26c5a83f598df453f81b6cdaa1c60e
  })

Product.create!(
  {
    target_audience: TargetAudience.all.sample,
    name: 'White ensemble',
    description: 'This pair of shorts and t-shirt were made for you',
    price: '280 €',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/59651af83e00be66d5f7b256/1499798296479/?format=750w',
    brand: Brand.all.sample,
<<<<<<< HEAD
    product_category: ProductCategory.all.sample
=======
    product_category: ProductCategory.all.sample,
>>>>>>> f28d636a5d26c5a83f598df453f81b6cdaa1c60e
  })

Product.create!(
  {
    target_audience: TargetAudience.all.sample,
    name: 'Lovely pink-ish',
    description: 'Arboring a splendid rose beige color, this dress is sure to turn heads',
    price: '50 €',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/59651b252e69cf0722dbac40/1499798319087/?format=1000w',
    brand: Brand.all.sample,
<<<<<<< HEAD
    product_category: ProductCategory.all.sample
=======
    product_category: ProductCategory.all.sample,
>>>>>>> f28d636a5d26c5a83f598df453f81b6cdaa1c60e
  })

Product.create!(
  {
    target_audience: TargetAudience.all.sample,
    name: 'Colorful dress',
    description: 'Why not bring some colors to your style with these superbe items',
    price: '90 €',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/59651b4acd0f68b5392996c7/1501015849713/?format=1000w',
    brand: Brand.all.sample,
<<<<<<< HEAD
    product_category: ProductCategory.all.sample
=======
    product_category: ProductCategory.all.sample,
>>>>>>> f28d636a5d26c5a83f598df453f81b6cdaa1c60e
  })
