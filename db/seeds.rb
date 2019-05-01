User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
User.create!(email: 'toto@email.com', password: 'password', password_confirmation: 'password')

book = Book.create!(name: "The Hitchhikker's Guide to the Galaxy", state: 'in progress', user: User.last)

Order.create!(book: book, reference: '#BF4509', amount: 6.50, state: 'in progress', customer_name: 'John Doe', customer_address: '34 rue de toto')
