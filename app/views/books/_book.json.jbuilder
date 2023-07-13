json.extract! book, :id, :title, :description, :author_id, :genre_id, :price, :created_at, :updated_at
json.url book_url(book, format: :json)
