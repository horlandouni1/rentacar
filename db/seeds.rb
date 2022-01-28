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


puts '------------Users------------'

users.each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.name} - #{user.email}"
end


puts 'Finished!'
