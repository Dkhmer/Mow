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
# ANIMALS
file1 = URI.open("https://images.unsplash.com/photo-1564349683136-77e08dba1ef7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1052&q=80")
animal1 = Animal.create!(city: "New York",specie: "Panda", user: leo, price: 32, age: 5, name: "Mariane", address: "Gold Street, New York", description:"Panda extrêmement doux, a beaucoup d'experience dans le cinéma, très à l'aise devant la caméra")
animal1.photo.attach(io: file1, filename: 'mariane.jpg', content_type: 'image/png')

file11 = URI.open("https://images.unsplash.com/photo-1570288685369-f7305163d0e3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80")
animal1 = Animal.create!(city: "New York", specie: "Panda", user: leo, price: 32,  age: 6, name: "Mariane", address: "Gold Street, New York", description:"Panda extrêmement doux, a beaucoup d'experience dans le cinéma, très à l'aise devant la caméra")
animal1.photos.attach(io: file1, filename: 'mariane.jpg', content_type: 'image/png')
animal1.photos.attach(io:file11, filename:'marianes.jpg', content_type: 'image/png')

file2 = URI.open("https://images.unsplash.com/photo-1519664824562-b4bc73f9795a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=564&q=80")
animal1 = Animal.create!(city: "New York", specie: "Deer", user: narcisse, price: 9, age: 7, name: "Bibiche", address: "Fulton Street, New York",description:"Animal specialisé dans les courses, vous permet de vous deplacer très rapidement. Pas chère!")
animal1.photos.attach(io: file2, filename: 'bibiche.jpg', content_type: 'image/png')

file3 = URI.open("https://images7.alphacoders.com/405/405322.jpg")
animal1 = Animal.create!(city: "Bordeaux", specie: "Sheep", user: leo, price: 48, age: 8, name: "Nathalie", address: "Zuccoti Park, New York",description:"Mouton extrêmement cool, et mignon. Peut remplacer des baby sitters en gardant vos enfants.")
animal1.photos.attach(io: file3, filename: 'nathalie.jpg', content_type: 'image/png')

file4 = URI.open("https://images.unsplash.com/photo-1486578077620-8a022ddd481f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80")
animal1 = Animal.create!(city: "New York", specie: "Eagle", user: narcisse, price: 12, age: 9, name: "Alexis", address: "New York Stock Exchange, New York",description:"Vous permet d'envoyer des messages, plus rapide qu'un pigeon voyageur et Chronopost")
animal1.photos.attach(io: file4, filename: 'alexis.jpg', content_type: 'image/png')

file5 = URI.open("https://images.unsplash.com/photo-1536146021566-627ce3c4d813?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
animal1 = Animal.create!(city: "Paris", specie: "Monkey", user: narcisse, price: 13, age: 10, name: "Bongo", address: "World Trade Center, New York",description:"Singe, multifonction, peut être loué pour des tests de laboratoires ou pour des pictures instagram")
animal1.photos.attach(io: file5, filename: 'mouti.jpg', content_type: 'image/png')

file6 = URI.open("https://cdn1-www.cattime.com/assets/uploads/2015/05/cat-obesity-1.jpg")
animal1 = Animal.create!(city: "New York", specie: "Cat", user: narcisse, price: 79, age: 11, name: "Chausette", address: "Lexington Avenue, New York",description:"Une journée stressante? Loué Chaussette pour decompressé")
animal1.photos.attach(io: file6, filename: 'bibi.jpg', content_type: 'image/png')

file7 = URI.open("https://wallpapercrafter.com/desktop/271302-cow-highland-cattle-calf-and-highland-calf-hd.jpg")
animal1 = Animal.create!(city: "New York", specie: "Cow", user: leo, price: 37, age: 12, name: "Edouard", address: "Park Place, New York",description:"Utilisable pour tondre votre gazon (il mange vos herbes en 2h environ)")
animal1.photo.attach(io: file7, filename: 'edouard.jpg', content_type: 'image/png')
