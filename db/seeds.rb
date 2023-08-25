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

book = Book.create!(
  poster_image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1577043824i/44492285.jpg",
  title: "Dune Messiah",
  author: "Frank Herbert",
  year: 1969,
  genre: "Science Fiction",
  overview: "Dune Messiah continues the story of Paul Atreides, better known--and feared--as the man christened Muad'Dib. As Emperor of the Known Universe, he possesses more power than a single man was ever meant to wield. Worshipped as a religious icon by the fanatical Fremens, Paul faces the enmity of the political houses he displaced when he assumed the throne--and a conspiracy conducted within his own sphere of influence.",
  user: User.all.sample
)
puts "Created #{book.title}"

book = Book.create!(
  poster_image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1564783201i/44492286.jpg",
  title: "Children of Dune",
  author: "Frank Herbert",
  year: 1976,
  genre: "Science Fiction",
  overview: "The Children of Dune are twin siblings Leto and Ghanima Atreides, whose father, the Emperor Paul Muad'Dib, disappeared in the desert wastelands of Arrakis nine years ago. Like their father, the twins possess supernormal abilities--making them valuable to their manipulative aunt Alia, who rules the Empire in the name of House Atreides.",
  user: User.all.sample
)
puts "Created #{book.title}"

book = Book.create!(
  poster_image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1564025916i/44439415.jpg",
  title: "God Emperor of Dune",
  author: "Frank Herbert",
  year: 1981,
  genre: "Science Fiction",
  overview: "Millennia have passed on Arrakis, and the once-desert planet is green with life. Leto Atreides, the son of the world's savior, the Emperor Paul Muad'Dib, is still alive but far from human. To preserve humanity's future, he sacrificed his own by merging with a sandworm, granting him near immortality as God Emperor of Dune for the past thirty-five hundred years.",
  user: User.all.sample
)
puts "Created #{book.title}"

book = Book.create!(
  poster_image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1546071216i/5907.jpg",
  title: "The Hobbit",
  author: "J.R.R. Tolkien",
  year: 1937,
  genre: "Fantasy",
  overview: "In a hole in the ground there lived a hobbit. Not a nasty, dirty, wet hole, filled with the ends of worms and an oozy smell, nor yet a dry, bare, sandy hole with nothing in it to sit down on or to eat: it was a hobbit-hole, and that means comfort.
  Written for J.R.R. Tolkien's own children, The Hobbit met with instant critical acclaim when it was first published in 1937.",
  user: User.all.sample
)
puts "Created #{book.title}"

book = Book.create!(
  poster_image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1654215925i/61215351.jpg",
  title: "The Lord of the Rings: The Fellowship of the Ring",
  author: "J.R.R. Tolkien",
  year: 1954,
  genre: "Fantasy",
  overview: "In a sleepy village in the Shire, young Frodo Baggins finds himself faced with an immense task, as his elderly cousin Bilbo entrusts the Ring to his care. Frodo must leave his home and make a perilous journey across Middle-earth to the Cracks of Doom, there to destroy the Ring and foil the Dark Lord in his evil purpose.",
  user: User.all.sample
)
puts "Created #{book.title}"

book = Book.create!(
  poster_image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1654216149i/61215372.jpg",
  title: "The Lord of the Rings: The Two Towers",
  author: "J.R.R. Tolkien",
  year: 1954,
  genre: "Fantasy",
  overview: "Frodo and his Companions of the Ring have been beset by danger during their quest to prevent the Ruling Ring from falling into the hands of the Dark Lord by destroying it in the Cracks of Doom. They have lost the wizard, Gandalf, in a battle in the Mines of Moria. And Boromir, seduced by the power of the Ring, tried to seize it by force.",
  user: User.all.sample
)
puts "Created #{book.title}"

book = Book.create!(
  poster_image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1654216226i/61215384.jpg",
  title: "The Lord of the Rings: The Return of the King",
  author: "J.R.R. Tolkien",
  year: 1955,
  genre: "Fantasy",
  overview: "One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them. The Dark Lord has risen, and as he unleashes hordes of Orcs to conquer all Middle-earth, Frodo and Sam struggle deep into his realm in Mordor. To defeat Sauron, the One Ring must be destroyed in the fires of Mount Doom. But the way is impossibly hard, and Frodo is weakening. The Ring corrupts all who bear it and Frodo's time is running out.",
  user: User.all.sample
)
puts "Created #{book.title}"

# 15.times do
#   book = Book.create!(
#     poster_image: "#{rand(1..10)}.jpg",
#     title: Faker::Book.title,
#     author: Faker::Book.author,
#     year: rand(1950..2023),
#     genre: Faker::Book.genre,
#     overview: Faker::Books::Dune.quote,
#     user: User.all.sample
#   )
#   puts "Created #{book.title}"
# end

puts "Finished!"
