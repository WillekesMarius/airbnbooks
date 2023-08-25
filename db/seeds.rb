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


10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password)
  puts "Created #{user.first_name}"
end

puts "Creating books"

book = Book.create!(
  poster_image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1170803558l/72193.jpg",
  title: "Harry Potter and the Philosopher's Stone",
  author: "J.K. Rowling",
  year: 1997,
  genre: "Fantasy",
  overview: "Harry Potter thinks he is an ordinary boy - until he is rescued by an owl, taken to Hogwarts School of Witchcraft and Wizardry, learns to play Quidditch and does battle in a deadly duel. The Reason ... HARRY POTTER IS A WIZARD!",
  user: User.all.sample
)
puts "Created #{book.title}"

book = Book.create!(
  poster_image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1474169725i/15881.jpg",
  title: "Harry Potter and the Chamber of Secrets",
  author: "J.K. Rowling",
  year: 1998,
  genre: "Fantasy",
  overview: "Ever since Harry Potter had come home for the summer, the Dursleys had been so mean and hideous that all Harry wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he's packing his bags, Harry receives a warning from a strange impish creature who says that if Harry returns to Hogwarts, disaster will strike. And strike it does.",
  user: User.all.sample
)
puts "Created #{book.title}"

book = Book.create!(
  poster_image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1630547330i/5.jpg",
  title: "Harry Potter and the Prisoner of Azkaban",
  author: "J.K. Rowling",
  year: 1999,
  genre: "Fantasy",
  overview: "Harry Potter, along with his best friends, Ron and Hermione, is about to start his third year at Hogwarts School of Witchcraft and Wizardry. Harry can't wait to get back to school after the summer holidays. (Who wouldn't if they lived with the horrible Dursleys?) But when Harry gets to Hogwarts, the atmosphere is tense. There's an escaped mass murderer on the loose, and the sinister prison guards of Azkaban have been called in to guard the school...",
  user: User.all.sample
)
puts "Created #{book.title}"

book = Book.create!(
  poster_image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1554006152i/6.jpg",
  title: "Harry Potter and the Goblet of Fire",
  author: "J.K. Rowling",
  year: 2000,
  genre: "Fantasy",
  overview: "It is the summer holidays and soon Harry Potter will be starting his fourth year at Hogwarts School of Witchcraft and Wizardry. Harry is counting the days: there are new spells to be learnt, more Quidditch to be played, and Hogwarts castle to continue exploring. But Harry needs to be careful - there are unexpected dangers lurking...",
  user: User.all.sample
)
puts "Created #{book.title}"

book = Book.create!(
  poster_image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1546910265i/2.jpg",
  title: "Harry Potter and the Order of the Phoenix",
  author: "J.K. Rowling",
  year: 2003,
  genre: "Fantasy",
  overview: "Harry Potter is about to start his fifth year at Hogwarts School of Witchcraft and Wizardry. Unlike most schoolboys, Harry never enjoys his summer holidays, but this summer is even worse than usual. The Dursleys, of course, are making his life a misery, but even his best friends, Ron and Hermione, seem to be neglecting him. Harry has had enough.",
  user: User.all.sample
)
puts "Created #{book.title}"

book = Book.create!(
  poster_image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1587697303i/1.jpg",
  title: "Harry Potter and the Half-Blood Prince",
  author: "J.K. Rowling",
  year: 2005,
  genre: "Fantasy",
  overview: "It is the middle of the summer, but there is an unseasonal mist pressing against the windowpanes. Harry Potter is waiting nervously in his bedroom at the Dursleys' house in Privet Drive for a visit from Professor Dumbledore himself. One of the last times he saw the Headmaster was in a fierce one-to-one duel with Lord Voldemort, and Harry can't quite believe that Professor Dumbledore will actually appear at the Dursleys' of all places.",
  user: User.all.sample
)
puts "Created #{book.title}"

book = Book.create!(
  poster_image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1663805647i/136251.jpg",
  title: "Harry Potter and the Deathly Hallows",
  author: "J.K. Rowling",
  year: 2007,
  genre: "Fantasy",
  overview: "Harry has been burdened with a dark, dangerous and seemingly impossible task: that of locating and destroying Voldemort's remaining Horcruxes. Never has Harry felt so alone, or faced a future so full of shadows. But Harry must somehow find within himself the strength to complete the task he has been given. He must leave the warmth, safety and companionship of The Burrow and follow without fear or hesitation the inexorable path laid out for him...",
  user: User.all.sample
)
puts "Created #{book.title}"

book = Book.create!(
  poster_image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1555447414i/44767458.jpg",
  title: "Dune",
  author: "Frank Herbert",
  year: 1965,
  genre: "Science Fiction",
  overview: "Set on the desert planet Arrakis, Dune is the story of the boy Paul Atreides, heir to a noble family tasked with ruling an inhospitable world where the only thing of value is the “spice” melange, a drug capable of extending life and enhancing consciousness.",
  user: User.all.sample
)
puts "Created #{book.title}"

15.times do
  book = Book.create!(
    poster_image: "#{rand(1..10)}.jpg",
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
