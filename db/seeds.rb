# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "open-uri"

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')


Animal.destroy_all
User.destroy_all
puts "Creating animal........"


narcisse = User.create!(email: "narcisse@gmail.com", password:"123456")
leo = User.create!(email: "leo@gmail.com", password:"123456")

momo = Animal.create!(name: 'Momo', specie: "sheep", user: narcisse, description: "Around 10,500 years ago, cattle were domesticated from as few as 80 progenitors in central Anatolia, the Levant and Western Iran.[1]" )
nono = Animal.create!(name: 'Nono', specie: "cow", user: leo,description: "Cows are the most common type of large domesticated ungulates. They are a prominent modern member of the subfamily Bovinae, are the most widespread species of the genus Bos, and are most commonly classified collectively as Bos taurus"  )
Animal.create(name: 'Toto', specie: "snake", user: narcisse, description: "Snakes are elongated, legless, carnivorous reptiles of the suborder Serpentes" )
Animal.create(name: 'Dodo', specie: "mouse",user: narcisse, description:"A mouse, plural mice, is a small rodent characteristically having a pointed snout, small rounded ears, a body-length scaly tail, and a high breeding rate. The best known mouse species is the common house mouse (Mus musculus). It is also a popular pet." )
Animal.create(name: 'Zozo', specie: "dog",user: leo, description:"The dog is a domesticated carnivore of the family Canidae.")
Animal.create(name: 'Soso', specie: "bear",user: leo, description:"Bears are carnivoran mammals of the family Ursidae")
Animal.create(name: 'Xoxo', specie: "pig",user: narcisse, description: "A pig is any of the animals in the genus Sus, within the even-toed ungulate family Suidae.")
Animal.create(name: 'Coco', specie: "duck",user: narcisse, description: "Duck is the common name for numerous species in the waterfowl family Anatidae")
Animal.create(name: 'Vovo', specie: "pikachu",user: narcisse)

momo.photo.attach(io:file, filename: 'nes.png', content_type: 'image/png')

