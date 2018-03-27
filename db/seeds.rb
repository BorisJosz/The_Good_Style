# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
# generate user
user = User.create!(
  { name: 'John Smith',
    address: 'White House, US of A',
    telephone: '911',
    email: 'John.Smith@gmail.com',
    password: '123456',
    password_confirmation: '123456'
})
user.save!

Product.destroy_all
# generate products
Product.create!(
  { name: 'White blouse',
    description: 'Sustainable bamboo, cotton, wool and hemp fabrics, ethical production practices',
    price: '80',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/544ea656e4b07de01f73d3c5/59600d1859cc68c19ada7262/1515096769963/ethical%2Bbrands%2Buk.png?format=2500w',
})

Product.create!(
  { name: 'Comfy sweater',
    description: 'Straight from India',
    price: '60',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/596519e915d5db63fc7384bd/1501015792187/?format=1000w',
})

Product.create!(
  { name: 'Casual dress',
    description: 'Made with sustainable materials at heart, a comfortable and light dress to wear on any day',
    price: '120',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/59651a66ebbd1a5c3be28b08/1499798126449/?format=2500w',
})

Product.create!(
  { name: 'Simple & Sexy',
    description: 'Wow your partner in this simple yet elegant dress',
    price: '80',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/5977b1e02e69cffa18f371ec/1501016556294/?format=750w',
})

Product.create!(
  { name: 'White ensemble',
    description: 'This pair of shorts and t-shirt were made for you',
    price: '280€',
    image: 'https://static1.squarespace.com/static/5442b6cce4b0cf00d1a3bef2/t/59651af83e00be66d5f7b256/1499798296479/?format=750w',
})
