require 'pry'

class BooksController < ApplicationController

    set :views, 'app/views/books'

    get "/books" do
        @books = Book.all
        erb :index
    end

    post "/books" do
        # author = params[:author]
        # title = params[:title]
        # snippet = params[:snippet]
        # Book.create(author: author, title: title, snippet: snippet)
        # binding.pry
        Book.create(params)
        redirect "/books"        
    end

    get "/books/new" do
        @authors = Author.all
        erb :new
    end

    get "/books/:id" do 
        book_id = params[:id]
        @book = Book.find(book_id)
        erb :show
    end

    get "/books/:id/edit" do # don't mix and match programming styles
        @book = Book.find(params[:id])
        erb :edit
    end
    
    patch "/books/:id" do
        # update the resource 
        book = Book.find(params[:id])
        author = params[:author]
        title = params[:title]
        snippet = params[:snippet]
        book.update(author: author, title: title, snippet: snippet)
        redirect "/books/#{book.id}"
    end

    delete "/books/:id" do
        book = Book.find(params[:id])
        book.destroy
        redirect "/books"
    end



end