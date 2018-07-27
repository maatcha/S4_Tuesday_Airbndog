# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
num = 10

num.times do 
	a = City.create(name: Faker::Address.city)
	b = Dog.create(name: Faker::Dog.name, breed:Faker::Dog.breed, city_id: a.id)
	c = Dogsitter.create(first_name: Faker::Name.last_name, last_name: Faker::Name.last_name, city_id:a.id)
	b.dogsitters << c
	c.dogs << b
	
end