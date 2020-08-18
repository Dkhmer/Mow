# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

<<<<<<< HEAD
user1 = User.create(email: 'a@g.com', password: "toto")
user2 = User.create(email: 'a@g.com', password: "toto")



Animal.create(name: 'Momo', specie: "sheep",user_id: 1)
Animal.create(name: 'Nono', specie: "cow", user_id: 1)
Animal.create(name: 'Toto', specie: "snake", user_id: 1)
Animal.create(name: 'Dodo', specie: "mouse", user_id: 1)
Animal.create(name: 'Zozo', specie: "dog", user_id: 2)
Animal.create(name: 'Soso', specie: "bear", user_id: 2)
Animal.create(name: 'Xoxo', specie: "pig", user_id: 2)
Animal.create(name: 'Coco', specie: "duck", user_id: 2)
Animal.create(name: 'Vovo', specie: "pikachu", user_id: 2)
=======
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

>>>>>>> 41c84566fa05506009d115cc811c8453a8abd0d7
