# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  # User.destroy_all

  # usuario1 = User.create!(
  #   email:"crdsis@gmail.com",
  #   name:"Cristopher",
  #   password: "123456"
  # )

  # auto1= Car.create!(
  #   plate: "ASD-3123",
  #   year: 2022,
  #   model:"Yaris",
  #   color:"red",
  #   price:"50",
  #   user_id:1,
  #   brand:"toyota",
  #   car_type: "Sedan"
  # )

  # usuario1.save
  # auto1.save

  usuario2 = User.create!(
    name: "Andres",
    email: "andres123@gmail.com",
    password: "123456",
    admin: true
  )

  auto2 = Car.create!(
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
  auto2.save
