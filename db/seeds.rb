# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

Product.destroy_all


photo_chat = ["https://images.pexels.com/photos/266784/pexels-photo-266784.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/5643798/pexels-photo-5643798.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/302280/pexels-photo-302280.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"]


4.times do
  Product.create(
    title: Faker::Creature::Cat.name,
    description: Faker::Lorem.sentence(word_count: 2),
    price: Faker::Number.number(digits: 2),
    image_url: photo_chat[rand(photo_chat.length)]
  )
end