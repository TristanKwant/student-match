# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Day.destroy_all
Profile.destroy_all

user1 = User.create!(email: "tristan@admin.com", password: "123456", admin: true)
user2 = User.create!(email: "marloes@admin.com", password: "123456", admin: true)
user3 = User.create!(email: "tristan@student.com", password: "123456")
user4 = User.create!(email: "marloes@student.com", password: "123456")
user5 = User.create!(email: Faker::Internet.email, password: "123456")
user6 = User.create!(email: Faker::Internet.email, password: "123456")
user7 = User.create!(email: Faker::Internet.email, password: "123456")
user8 = User.create!(email: Faker::Internet.email, password: "123456")
user9 = User.create!(email: Faker::Internet.email, password: "123456")
user10 = User.create!(email: Faker::Internet.email, password: "123456")


match1 = Match.create!(matchlist: [])

day1 = Day.create!(datematch: Date.today)

profile2 = Profile.create!(first_name: "Marloes", last_name: "I'm admin man", user: user2)
profile4 = Profile.create!(first_name: "Marloes", last_name: "Student is my last name", user: user4)
profile5 = Profile.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user: user5)
profile6 = Profile.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user: user6)
profile7 = Profile.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user: user7)
profile8 = Profile.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user: user8)
profile9 = Profile.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user: user9)
profile10 = Profile.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user: user10)
