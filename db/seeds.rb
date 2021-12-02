# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

Product.destroy_all


photo_chat = ["https://images.pexels.com/photos/2061057/pexels-photo-2061057.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/8538273/pexels-photo-8538273.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/2870353/pexels-photo-2870353.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/2643812/pexels-photo-2643812.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/2817422/pexels-photo-2817422.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/2817419/pexels-photo-2817419.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/266784/pexels-photo-266784.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/4587970/pexels-photo-4587970.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/1323326/cat-pet-pussy-animal-1323326.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/5643798/pexels-photo-5643798.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/57416/cat-sweet-kitty-animals-57416.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/4492148/pexels-photo-4492148.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/730896/pexels-photo-730896.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/2194261/pexels-photo-2194261.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/1576193/pexels-photo-1576193.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/617278/pexels-photo-617278.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/4602/jumping-cute-playing-animals.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/1398185/pexels-photo-1398185.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/1444492/pexels-photo-1444492.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/2127516/pexels-photo-2127516.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/1931368/pexels-photo-1931368.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/978555/pexels-photo-978555.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/3782765/pexels-photo-3782765.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
"https://images.pexels.com/photos/3960036/pexels-photo-3960036.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
]
x = 0
24.times do
  
  Product.create(
    title: Faker::Creature::Cat.name,
    description: Faker::Lorem.sentence(word_count: 2),
    price: Faker::Number.between(from: 10, to: 30),
    image_url: photo_chat[x]
  )
  x += 1
end