# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy Animals"
Animal.destroy_all if Rails.env.development?


puts "users"
moloud = User.create!(email: 'Moloud@gmail.com', password: "sheeppig")
jean = User.create!(email: 'Jean@gmail.com', password: "sheeppig")

puts "users has been create"


puts "create animals"
Animal.create!(name: 'Momo', specie: "sheep", user: moloud)
Animal.create!(name: 'Nono', specie: "cow", user: jean)
# Animal.create(name: 'Toto', specie: "snake")
# Animal.create(name: 'Dodo', specie: "mouse")
# Animal.create(name: 'Zozo', specie: "dog")
# Animal.create(name: 'Soso', specie: "bear")
# Animal.create(name: 'Xoxo', specie: "pig")
# Animal.create(name: 'Coco', specie: "duck")
# Animal.create(name: 'Vovo', specie: "pikachu")
puts " animal has been create"
