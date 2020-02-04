# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ella = Cat.find_or_create_by(name: "Ella", breed: "black", image: "image_path")
garfield = Cat.find_or_create_by(name: "Garfield", breed: "orange", image: "image_path")

eating = Hobby.find_or_create_by(name: "Eating", description: "Eating food")
sleeping = Hobby.find_or_create_by(name: "Sleeping", description: "Taking naps")

ella.hobbies << eating 
ella.hobbies << sleeping
garfield.hobbies << eating
