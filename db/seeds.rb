# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Animal.destroy_all
User.destroy_all
puts "Creating animal........"


narcisse = User.create!(email: "narcisse@gmail.com", password:"123456")
leo = User.create!(email: "leo@gmail.com", password:"123456")

Animal.create!(name: 'Momo', specie: "sheep", user: narcisse )
Animal.create!(name: 'Nono', specie: "cow", user: leo)
Animal.create(name: 'Toto', specie: "snake", user: narcisse)
Animal.create(name: 'Dodo', specie: "mouse",user: narcisse )
Animal.create(name: 'Zozo', specie: "dog",user: leo)
Animal.create(name: 'Soso', specie: "bear",user: leo)
Animal.create(name: 'Xoxo', specie: "pig",user: narcisse)
Animal.create(name: 'Coco', specie: "duck",user: narcisse)
Animal.create(name: 'Vovo', specie: "pikachu",user: narcisse)


