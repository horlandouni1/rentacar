# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  usuario1 = User.create!({email:"crdsis@gmail.com", name:"Cristopher", password: "123456"})
  auto1= Car.create!({plate: "ASD-3123", year: 2015, model:"Rio", color:"Rojo", price:200, user_id:1, brand:"Kia"})
  auto2= Car.create!({plate: "GS4-5G23", year: 2022, model:"Corolla", color:"Plateado", price:129 , user_id:1, brand:"Subaru",})
  auto3= Car.create!({plate: "GAA-XSDS", year: 2021, model:"Aventador", color:"Ginda", price:159 , user_id:1, brand:"Lambogini",})
  auto4= Car.create!({plate: "LOL-3123", year: 2010, model:"Montero", color:"Verde", price:80 , user_id:1, brand:"Jeep",})
  auto5= Car.create!({plate: "WTF-XDD", year: 2000, model:"Premium", color:"Negro", price:329 , user_id:1, brand:"BMW",})
  auto6 = Car.create!({plate: "RAA-6666", year: 1996, model:"Corolla", color:"Plateado", price:229 , user_id:1, brand:"Porsche",})


  usuario1.save
  auto1.save
  auto2.save
  auto3.save
  auto4.save
  auto5.save
  auto6.save
