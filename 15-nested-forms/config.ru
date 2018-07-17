require_relative './config/environment'
require_relative './app/controllers/authors_controller'
require_relative './app/controllers/books_controller'

use AuthorsController
use BooksController
run ApplicationController
