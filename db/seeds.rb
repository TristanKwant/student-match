# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(email: "tristan@admin.com", password: "123456", admin: true)
user2 = User.create!(email: "marloes@admin.com", password: "123456", admin: true)
user3 = User.create!(email: "tristan@student.com", password: "123456")
user4 = User.create!(email: "marloes@student.com", password: "123456")


day1 = Day.create!(datematch: "19 sept 2017")
day2 = Day.create!(datematch: "20 sept 2017")
day3 = Day.create!(datematch: "21 sept 2017")
day4 = Day.create!(datematch: "22 sept 2017")
