require 'faker'

puts "Cleaning database"
Book.destroy_all
User.destroy_all

puts "Creating users"

admin = User.create(
  first_name: "Admin",
  last_name: "Smit",
  email: "admin@email.com",
  password: "password"
)

puts "Created admin to login with: email #{admin.email}, password: 'password'}"

5.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password)
  puts "Created #{user.first_name}"
end

puts "Creating new books"

10.times do
  book = Book.create!(
    title: Faker::Book.title,
    author: Faker::Book.author,
    year: rand(1950..2023),
    genre: Faker::Book.genre,
    overview: Faker::Books::Dune.quote,
    user: User.all.sample
  )
  puts "Created #{book.title}"
end

puts "Finished!"
