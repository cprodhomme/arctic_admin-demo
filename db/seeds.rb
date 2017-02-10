# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
User.create!(email: 'toto@email.com', password: 'password', password_confirmation: 'password')

book = Book.create!(name: "The Hitchhikker's Guide to the Galaxy", state: 'in progress')

Order.create!(book: book, reference: '#BF4509', amount: 6.50, state: 'in progress', customer_name: 'John Doe', customer_address: '34 rue de toto')