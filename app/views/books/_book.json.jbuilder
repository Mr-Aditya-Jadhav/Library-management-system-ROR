json.extract! book, :id, :isbn, :title, :author, :subject, :temp, :created_at, :updated_at
json.url book_url(book, format: :json)
