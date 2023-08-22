require 'faker'

puts "Cleaning database"
User.destroy_all
Book.destroy_all

puts "Creating users"
5.times do
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password)
  puts "Created #{user.first_name}"
end

puts "Creating new books"

10.times do
  book = Book.create(title: Faker::Book.title, author: Faker::Book.author, year: rand(1950..2023), genre: Faker::Book.genre, overview: Faker::Books::Dune.quote, user_id: rand(1..5))
  puts "Created #{book.title}"
end

puts "Finished!"
