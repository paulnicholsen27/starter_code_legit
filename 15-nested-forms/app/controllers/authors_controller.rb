class AuthorsController < ApplicationController
    set :views, 'app/views/authors'

    get "/authors" do
        @authors = Author.all
        erb :index
    end

    get "/authors/new" do

        erb :new
    end

    get "/authors/:id" do 
        @author = Author.find(params[:id])
        erb :show
    end


    post "/authors" do
 #        # make the author and their books
        binding.pry
        name = params[:author][:name]
        author = Author.find_or_create_by(name: name)
        params[:book].each do |book_info|
            Book.create(author: author, title: book_info[:title],
                        snippet: book_info[:snippet])
        end
        redirect "/authors/#{author.id}"
    end
end