# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  usuario1 = User.create!({email:"crdsis@gmail.com", name:"Cristopher", password: "123456"})
  auto1= Car.create!({plate: "ASD-3123", year: 2022, model:"dToyoyta", color:"red", price:"dad", user_id:1, brand:"toyota"})
  usuario1.save
  auto1.save
