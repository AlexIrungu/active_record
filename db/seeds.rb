puts "Seeding started 🌱......"
# Delete all records from table
User.delete_all
Product.delete_all
Review.delete_all

user1 = User.create(name: Faker::Name.name, age: rand(9..60), gender: Faker::Gender.short_binary_type )
user2 = User.create(name: Faker::Name.name, age: rand(8..60), gender: Faker::Gender.short_binary_type )

product1  = Product.create(name: Faker::Game.title, description: Faker::Game.genre, price: rand(0..60), in_stock: true)
product2  = Product.create(name: Faker::Game.title, description: Faker::Game.genre, price: rand(0..60), in_stock: true)

review1 = Review.create(star_rating: rand(0..5), comment: "Loved the storyline")
review2 = Review.create(star_rating: rand(0..5), comment: "Definitely an improvement from the last release")

user1.reviews << review2
user2.reviews << review1

product1.reviews << review1
product2.reviews << review2

puts "Done seeding!"