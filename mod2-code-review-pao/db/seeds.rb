# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jerry= Pet.create(name:"Jerry", species: "Panda Plant", age:1)
ruth= Pet.create(name:"Ruth", species:"Cat", age:3)

melanie= Owner.create(name:"Melanie")
will= Owner.create(name:"Will")

melanie.pets << jerry
will.pets << ruth
