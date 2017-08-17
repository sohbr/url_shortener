# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create!(email: 'asdf@gmail.com')
user2 = User.create!(email: 'fdas@gmail.com')

url1 = ShortenedUrl.create_from_input('www.fejwsdfgsdfjew.com', user1)
url1 = ShortenedUrl.create_from_input('www.fdsbsgdhsdfgsdfgsdfgsfdw.com', user1)
url1 = ShortenedUrl.create_from_input('www.qweqwewqwrgfsgsergr.com', user2)
url1 = ShortenedUrl.create_from_input('www.123124235436543524.com', user2)
