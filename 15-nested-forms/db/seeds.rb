Book.destroy_all
Author.destroy_all

GoogleBooks::Adapter.new("Madeline L'Engle").fetch_books
GoogleBooks::Adapter.new("Plato").fetch_books
GoogleBooks::Adapter.new("Ernest Hemingway").fetch_books
