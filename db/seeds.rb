# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Day.destroy_all

user1 = User.create!(email: "tristan@admin.com", password: "123456", admin: true)
user2 = User.create!(email: "marloes@admin.com", password: "123456", admin: true)
user3 = User.create!(email: "tristan@student.com", password: "123456")
user4 = User.create!(email: "marloes@student.com", password: "123456")
user5 = User.create!(email: "1@student.com", password: "123456")
user6 = User.create!(email: "2@student.com", password: "123456")
user7 = User.create!(email: "3@student.com", password: "123456")
user8 = User.create!(email: "4@student.com", password: "123456")
user9 = User.create!(email: "5@student.com", password: "123456")
user10 = User.create!(email: "6@student.com", password: "123456")


match1 = Match.create!(matchlist: [])

day1 = Day.create!(matchdate: "01-01-2017")
