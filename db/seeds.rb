require 'faker'

User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

50.times do |i|
  User.create(
    email: Faker::Internet.unique.email,
    password: SecureRandom.random_number
  )
end

50.times do |i|
  Book.create(
    title: Faker::Book.unique.title,
    genre: Faker::Book.genre,
    author: Faker::Book.author,
    publisher: Faker::Book.publisher,
  )
end

35.times do |i|
  Order.create(
    book: Book.order('RANDOM()').first,
    reference: '#BF4509',
    amount: 6.50,
    state: 'in progress',
    customer_name: Faker::Name,
    customer_address: Faker::Address.street_address 
  )
end
