# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
User.destroy_all
Article.destroy_all

puts "Creating users..."
clara = User.create({username: "clara", email: "clara.luna@gmail.com", password: "azerty"})
roi =  User.create({username: "roi", email: "roi.eden@gmail.com", password: "azerty"})

"Users created"




article_1 = Article.create({title: "kundera", content: "HJMKJHMKJHkzjhlkjsrhvlkjsrhlkjqklrjh", rating: 0, category: "Literature"})
article_1.user = clara
puts "article_1 created"

article_2 = Article.create({title: "garcia marquez", content: "lkjqrblksjvlqkjhjh", rating: 0, category: "Literature"})
article_2.user = roi
puts "article_2 created"

puts "Finished"
