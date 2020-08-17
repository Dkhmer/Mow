# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
