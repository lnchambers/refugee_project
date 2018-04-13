# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(username: "SalEspinosa", first_name: "Salvador", last_name: "Espinosa", password: "https://youtu.be/zSGWoXDFM64?t=51s", email: "mahemail@mahemail.com", role: 1)
User.create!(username: "Admin", first_name: "Luke", last_name: "Chambers", password: "passwordpassword", email: "admin@admin.com", role: 1)
