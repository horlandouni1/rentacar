# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  User.destroy_all
  Car.destroy_all
  usuario1 = User.create!({email:"crdsis@gmail.com", name:"Cristopher", password: "123456",admin: true})
  auto1= Car.create!({plate: "ASD-3123", year: 2015, model:"Rio", color:"Rojo", price:"200", user_id:1, brand:"Kia",car_type: "Sedan"})
  auto2= Car.create!({plate: "GS4-5G23", year: 2022, model:"Corolla", color:"Plateado", price:"120" , user_id:1, brand:"Subaru",car_type: "Sedan"})
  auto3= Car.create!({plate: "GAA-XSDS", year: 2021, model:"Aventador", color:"Ginda", price:"150" , user_id:1, brand:"Lambogini",car_type: "Sedan"})
  auto4= Car.create!({plate: "LOL-3123", year: 2010, model:"Montero", color:"Verde", price:"800", user_id:1, brand:"Jeep",car_type: "Sedan"})
  auto5= Car.create!({plate: "WTF-XDD", year: 2000, model:"Premium", color:"Negro", price:"320" , user_id:1, brand:"BMW",car_type: "Sedan"})
  auto6 = Car.create!({plate: "RAA-6666", year: 1996, model:"Corolla", color:"Plateado", price:"220" , user_id:1, brand:"Porsche",car_type: "Sedan"})

  usuario1.save
  auto1.save
  auto2.save
  auto3.save
  auto4.save
  auto5.save
  auto6.save
  #

  # usuario1 = User.create!(
  usuario2 = User.create!(
    name: "Andres",
    email: "andres123@gmail.com",
    password: "123456",
    admin: true
  )

  auto7 = Car.create!(
    plate: "ADH-345",
    year: 2020,
    model: "Rio",
    color: "White",
    price: "40",
    user_id: 2,
    brand: "Kia",
    car_type: "Sedan"
  )

  usuario2.save
  auto7.save
