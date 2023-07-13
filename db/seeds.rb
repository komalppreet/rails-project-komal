require 'csv'
require 'faker'
require 'open-uri'

# Clear existing data
Book.destroy_all
Author.destroy_all
Genre.destroy_all
Review.destroy_all

# Seed Books from CSV
CSV.foreach(Rails.root.join('db', 'books.csv'), headers: true) do |row|
  Book.create(
    title: row['title'],
    description: row['description'],
    price: Faker::Commerce.price(range: 10..100, as_string: true),
    author: Author.all.sample,
    genre: Genre.all.sample
  )
end

# Seed Authors from CSV
CSV.foreach(Rails.root.join('db', 'authors.csv'), headers: true) do |row|
  Author.create(
    name: row['name'],
    bio: row['bio']
  )
end

# Seed Genres from API endpoint
genres_data = JSON.parse(open('https://example.com/api/genres').read)
genres_data.each do |genre_name|
  Genre.create(name: genre_name)
end

# Seed Reviews from API endpoint
reviews_data = JSON.parse(open('https://example.com/api/reviews').read)
reviews_data.each do |review_data|
  Review.create(
    title: review_data['title'],
    body: review_data['body'],
    book: Book.all.sample
  )
end

puts 'Seeding completed!'

