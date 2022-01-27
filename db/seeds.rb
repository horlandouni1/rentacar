# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [{ name: "Cristopher", email: "crdsis@gmail.com", password: "123456", admin: true },
         { name: "Andres", email: "andres123@gmail.com", password: "123456", admin: false },
         { name: "Carlos", email: "carlos@gmail.com", password: "123456", admin: false },
         { name: "Horlando", email: "horlando@gmail.com", password: "123456", admin: false },]

cars = [{ plate: "ASD-3123", year: 2015, model: "Rio", color: "Rojo", price: "200",
          user_id: 1, brand: "Kia", car_type: "Sedan" },
        { plate: "GS4-5G23", year: 2022, model: "Corolla", color: "Plateado", price: "120",
          user_id: 1, brand: "Subaru", car_type: "Sedan" },
        { plate: "GAA-XSDS", year: 2021, model: "Aventador", color: "Ginda", price: "150",
          user_id: 1, brand: "Lambogini", car_type: "Sedan" },
        { plate: "LOL-3123", year: 2010, model: "Montero", color: "Verde", price: "800",
          user_id: 2, brand: "Jeep", car_type: "Sedan" },
        { plate: "WTF-XDD", year: 2000, model: "Premium", color: "Negro", price: "320",
          user_id: 3, brand: "BMW", car_type: "Sedan" },
        { plate: "RAA-6666", year: 1996, model: "Corolla", color: "Plateado", price: "220",
          user_id: 4, brand: "Porsche", car_type: "Sedan" }]

puts '------------Users------------'

users.each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.name} - #{user.email}"
end

puts '------------Cars------------'
cars.each do |attributes|
  car = Car.create!(attributes)
  puts "Created #{car.model}- #{car.brand}"
end

puts 'Finished!'
