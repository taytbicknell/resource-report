# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([
  {user_name: "Matt", email: "matt@gmail.com", primary_zip:"94702"},
  {user_name: "Ron", email: "ron@gmail.com", primary_zip:"94702"},
  {user_name: "Judy", email: "judy@gmail.com", primary_zip:"94702"},
  {user_name: "Jill", email: "jill@gmail.com", primary_zip:"94702"}
])
