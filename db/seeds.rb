# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all

# users = User.create!({ name: "Carlos", email: "coalva.94@gmail.com", password: "12345678" })
# users.save

Car.destroy_all

car = Car.create!(
  plate: "B2C123",
  year: "2018",
  model: "Rio",
  color: "Red",
  price: "20",
  user_id: 3,
  brand: "Kia",
  car_type: '4x4'
)
car.save
