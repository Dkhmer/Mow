# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Animal.destroy_all
User.destroy_all
puts "Creating animal........"


narcisse = User.create!(email: "narcisse@gmail.com", password:"123456")
leo = User.create!(email: "leo@gmail.com", password:"123456")

file1 = URI.open("https://images7.alphacoders.com/405/405322.jpg")
animal1 = Animal.create!(user: leo, price: 32, name: "Mariane", address: "Gold Street, New York", description:"Gray, frizzy hair awkwardly hangs over a fine, anguished face. Lidded hazel eyes, set low within their sockets, watch delightfully over the town they've sought solace in for so long.")
animal1.photo.attach(io: file1, filename: 'mariane.jpg', content_type: 'image/png')

file2 = URI.open("https://images7.alphacoders.com/405/405322.jpg")
animal1 = Animal.create!(user: narcisse, price: 9, name: "Bibiche", address: "Fulton Street, New York",description:"Gray, frizzy hair awkwardly hangs over a fine, anguished face. Lidded hazel eyes, set low within their sockets, watch delightfully over the town they've sought solace in for so long.")
animal1.photo.attach(io: file2, filename: 'bibiche.jpg', content_type: 'image/png')

file3 = URI.open("https://images7.alphacoders.com/405/405322.jpg")
animal1 = Animal.create!(user: leo, price: 48, name: "Nathalie", address: "Zuccoti Park, New York",description:"Gray, frizzy hair awkwardly hangs over a fine, anguished face. Lidded hazel eyes, set low within their sockets, watch delightfully over the town they've sought solace in for so long.")
animal1.photo.attach(io: file3, filename: 'nathalie.jpg', content_type: 'image/png')

file4 = URI.open("https://images7.alphacoders.com/405/405322.jpg")
animal1 = Animal.create!(user: narcisse, price: 12, name: "Alexis", address: "New York Stock Exchange, New York",description:"Gray, frizzy hair awkwardly hangs over a fine, anguished face. Lidded hazel eyes, set low within their sockets, watch delightfully over the town they've sought solace in for so long.")
animal1.photo.attach(io: file4, filename: 'alexis.jpg', content_type: 'image/png')

file5 = URI.open("https://images7.alphacoders.com/405/405322.jpg")
animal1 = Animal.create!(user: narcisse, price: 13, name: "Mouti", address: "World Trade Center, New York",description:"Gray, frizzy hair awkwardly hangs over a fine, anguished face. Lidded hazel eyes, set low within their sockets, watch delightfully over the town they've sought solace in for so long.")
animal1.photo.attach(io: file5, filename: 'mouti.jpg', content_type: 'image/png')

file6 = URI.open("https://images7.alphacoders.com/405/405322.jpg")
animal1 = Animal.create!(user: narcisse, price: 79, name: "Bibi", address: "Lexington Avenue, New York",description:"Gray, frizzy hair awkwardly hangs over a fine, anguished face. Lidded hazel eyes, set low within their sockets, watch delightfully over the town they've sought solace in for so long.")
animal1.photo.attach(io: file6, filename: 'bibi.jpg', content_type: 'image/png')

file7 = URI.open("https://images7.alphacoders.com/405/405322.jpg")
animal1 = Animal.create!(user: leo, price: 37, name: "Edouard", address: "Park Place, New York",description:"Gray, frizzy hair awkwardly hangs over a fine, anguished face. Lidded hazel eyes, set low within their sockets, watch delightfully over the town they've sought solace in for so long.")
animal1.photo.attach(io: file7, filename: 'edouard.jpg', content_type: 'image/png')

