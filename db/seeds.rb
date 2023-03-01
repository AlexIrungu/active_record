puts "Seeding started 🌱......"
# Delete all records from table
User.delete_all
Product.delete_all
Review.delete_all

user1 = User.create(name: Faker::Name.name, age: rand(9..60), gender: Faker::Gender.short_binary_type )
user2 = User.create(name: Faker::Name.name, age: rand(8..60), gender: Faker::Gender.short_binary_type )

product1  = Product.create(name: Faker::Game.title, description: Faker::Game.genre, price: rand(0..60), in_stock: true)
product2  = Product.create(name: Faker::Game.title, description: Faker::Game.genre, price: rand(0..60), in_stock: true)

review1 = Review.create(star_rating: rand(0..5), comment: "Amazing storyline")
review2 = Review.create(star_rating: rand(0..5), comment: "Definitely an improvement from the last release")
review3 = Review.create(star_rating: rand(0..5), comment: "This is a Monster Hunter style game. Naturally it's good")
review4 = Review.create(star_rating: rand(0..5), comment: "I am surprised how good this game is")
review5 = Review.create(star_rating: rand(0..5), comment: "Reminds me of the intense gameplay of WARZONE")
review6 = Review.create(star_rating: rand(0..5), comment: "Keeps me up all night. If you know what I mean.")

user1.reviews << review2
user2.reviews << review1
user1.reviews << review4
user2.reviews << review3
user1.reviews << review5
user2.reviews << review6

product1.reviews << review1
product2.reviews << review2
product1.reviews << review3
product2.reviews << review4
product1.reviews << review5
product2.reviews << review6

puts "Done seeding!"