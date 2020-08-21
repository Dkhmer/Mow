# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Booking.destroy_all
Animal.destroy_all
User.destroy_all

puts "Creating animal........"

# USERS
narcisse = User.create!(email: "narcisse@gmail.com", password:"123456")
leo = User.create!(email: "leo@gmail.com", password:"123456")
eric = User.create!(email: "eric@gmail.com", password:"123456")

benjamin = User.create!(email: "benjamim@gmail.com", password:"123456")
jean = User.create!(email: "jean@gmail.com", password:"123456")

# ANIMALS
file1 = URI.open("https://images.unsplash.com/photo-1564349683136-77e08dba1ef7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1052&q=80")
file11 = URI.open("https://images.unsplash.com/photo-1570288685369-f7305163d0e3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80")
animal1 = Animal.create!(city: "New York", specie: "Panda", user: leo, price: 32,  age: 6, name: "Mariane", address: "Gold Street, New York", description:"Awesome panda, a lot of experiences as a movie actor!")
animal1.photos.attach(io: file1, filename: 'mariane.jpg', content_type: 'image/png')
animal1.photos.attach(io:file11, filename:'marianes.jpg', content_type: 'image/png')
puts "#{animal1.name}created"

file2 = URI.open("https://images.unsplash.com/photo-1519664824562-b4bc73f9795a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=564&q=80")
file22 =URI.open("https://images.unsplash.com/photo-1538509884487-8fb1722d06da?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=701&q=80")
file222 = URI.open("https://images.unsplash.com/photo-1542890886-40c9094e352a?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
animal2 = Animal.create!(city: "New York", specie: "Deer", user: narcisse, price: 9, age: 7, name: "Bibiche", address: "Fulton Street, New York",description:"Best animal to travel with ! He can walk for 6hours without stopping!")
animal2.photos.attach(io: file2, filename: 'bibiche.jpg', content_type: 'image/png')
animal2.photos.attach(io: file22, filename: 'bibichee.jpg', content_type: 'image/png')
animal2.photos.attach(io: file222, filename: 'bibicheee.jpg', content_type: 'image/png')
puts "#{animal2.name}created"

file3 = URI.open("https://images7.alphacoders.com/405/405322.jpg")
file33 = URI.open("https://images.unsplash.com/photo-1484557985045-edf25e08da73?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80")
animal3 = Animal.create!(city: "Bordeaux", specie: "Sheep", user: leo, price: 48, age: 8, name: "Nathalie", address: "Zuccoti Park, New York",description:"Can keep your children !")
animal3.photos.attach(io: file3, filename: 'nathalie.jpg', content_type: 'image/png')
animal3.photos.attach(io: file33, filename: 'nathaliee.jpg', content_type: 'image/png')
puts "#{animal3.name}created"

file4 = URI.open("https://images.unsplash.com/photo-1486578077620-8a022ddd481f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80")
file44 = URI.open("https://images.unsplash.com/photo-1575350126138-9259890f965a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
animal4 = Animal.create!(city: "New York", specie: "Eagle", user: narcisse, price: 12, age: 9, name: "Alexis", address: "New York Stock Exchange, New York",description:"Quicker than Chronopost, he can send any messages!")
animal4.photos.attach(io: file4, filename: 'alexis.jpg', content_type: 'image/png')
animal4.photos.attach(io: file44, filename: 'alexiss.jpg', content_type: 'image/png')
puts "#{animal4.name}created"

file5 = URI.open("https://images.unsplash.com/photo-1536146021566-627ce3c4d813?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
file55 = URI.open("https://images.unsplash.com/photo-1531989417401-0f85f7e673f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
animal5 = Animal.create!(city: "Paris", specie: "Monkey", user: narcisse, price: 13, age: 10, name: "Bongo", address: "Tour Eiffel, Paris",description:"Multifunction monkey, can be rent for laboratories tests or impress your friends !")
animal5.photos.attach(io: file5, filename: 'mouti.jpg', content_type: 'image/png')
animal5.photos.attach(io: file55, filename: 'mouti.jpg', content_type: 'image/png')
puts "#{animal5.name}created"

file6 = URI.open("https://cdn1-www.cattime.com/assets/uploads/2015/05/cat-obesity-1.jpg")
animal6 = Animal.create!(city: "New York", specie: "Cat", user: narcisse, price: 79, age: 11, name: "Chausette", address: "Lexington Avenue, New York",description:"Stressfull day ? Rent Chaussette to decompress")
animal6.photos.attach(io: file6, filename: 'bibi.jpg', content_type: 'image/png')
puts "#{animal6.name}created"


file7 = URI.open("https://wallpapercrafter.com/desktop/271302-cow-highland-cattle-calf-and-highland-calf-hd.jpg")
file77 =URI.open("https://images.unsplash.com/photo-1551606712-ce1d9e8fbee4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
animal7 = Animal.create!(city: "New York", specie: "Cow", user: leo, price: 37, age: 12, name: "Edouard", address: "Park Place, New York",description:"Utilisable pour tondre votre gazon (il mange vos herbes en 2h environ)")
animal7.photos.attach(io: file7, filename: 'edouard.jpg', content_type: 'image/png')
animal7.photos.attach(io: file77, filename: 'edouard.jpg', content_type: 'image/png')
puts "#{animal7.name}created"


file8 = URI.open("https://images.unsplash.com/photo-1437622368342-7a3d73a34c8f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1100&q=80")
file88 =URI.open("https://images.unsplash.com/photo-1496196614460-48988a57fccf?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
animal8 = Animal.create!(city: "London", specie: "Turtle", user: leo, price: 20, age: 12, name: "Donatello", address: "Picadilly Circus, London",description:"Best ninja turtle ever")
animal8.photos.attach(io: file8, filename: 'donatello.jpg', content_type: 'image/png')
animal8.photos.attach(io: file88, filename: 'donatello.jpg', content_type: 'image/png')
puts "#{animal8.name}created"

file9 = URI.open("https://images.unsplash.com/photo-1557050543-4d5f4e07ef46?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80")
file99 =URI.open("https://images.unsplash.com/photo-1551356277-dbb545a2d493?ixlib=rb-1.2.1&auto=format&fit=crop&w=1047&q=80")
animal9 = Animal.create!(city: "London", specie: "Elephant", user: leo, price: 80, age: 12, name: "Dumbo", address: "Oxford Street, London",description:"He can fly, I Swear !")
animal9.photos.attach(io: file9, filename: 'dumbo.jpg', content_type: 'image/png')
animal9.photos.attach(io: file99, filename: 'dumbo.jpg', content_type: 'image/png')

file10 = URI.open("https://images.unsplash.com/photo-1526034332220-067b0f400e06?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=650&q=80")
file100 =URI.open("https://images.unsplash.com/photo-1567601858514-da7c3584ff04?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
animal10 = Animal.create!(city: "London", specie: "Tiger", user: leo, price: 67, age: 12, name: "Tigrou", address: "Abbey Road, London",description:"He can keep your home safe")
animal10.photos.attach(io: file10, filename: 'tigrou.jpg', content_type: 'image/png')
animal10.photos.attach(io: file100, filename: 'tigrou.jpg', content_type: 'image/png')



# BOOKINGS

# BOOKING DU PANDA

booking1 = Booking.create(start_date:"01/09/20", end_date:"07/09/20" ,animal:animal1, user: eric, review:"Awesome panda, I rented him for my last video clip !", rating:5)
booking11 = Booking.create(start_date:"01/09/20", end_date:"07/09/20" ,animal:animal1, user: eric, review:"Great panda however he slept 5 hours in a row...!", rating:3)
booking111 = Booking.create(start_date:"01/09/20", end_date:"07/09/20" ,animal:animal1, user: eric, review:"Damn ! Didn't know that a panda eat that much of bamboo", rating:4)

# BOOKING DU DEER

booking2 = Booking.create(start_date:"01/09/20", end_date:"07/09/20" ,animal:animal2, user: leo, review:"I won all my race with that deer !", rating:5)
booking22 = Booking.create(start_date:"01/09/20", end_date:"07/09/20" ,animal:animal2, user: leo, review:"That deer attacked my dog..!", rating:2)
booking222 = Booking.create(start_date:"01/09/20", end_date:"07/09/20" ,animal:animal2, user: leo, review:"Paris --> London within 2hours... awesome ", rating:4)


# BOOKING DU SINGE
booking3 = Booking.create(start_date:"01/09/20", end_date:"07/09/20" ,animal:animal5, user: benjamin, review:"Horrible ! I rent him to impress a girl for my first date, he left with her !", rating:2)
booking33 = Booking.create(start_date:"01/09/20", end_date:"07/09/20" ,animal:animal5, user: jean, review:"He slapped my little brother...", rating:1)
booking333 = Booking.create(start_date:"01/09/20", end_date:"07/09/20" ,animal:animal5, user: leo, review:"Love him.. and guess what? he tried to smoke with me..", rating:5)



