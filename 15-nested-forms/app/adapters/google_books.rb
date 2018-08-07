module GoogleBooks
  class Adapter
    BASE_URL = 'https://www.googleapis.com/books/v1/volumes?q='

    attr_reader :author

    def initialize(author_name)
      @author = Author.find_or_create_by(name: author_name)
      # @author = author_sanitizer(author)
    end

    def fetch_books
      books = JSON.parse(RestClient.get(author_url))

      books['items'].each do |item|
        book = ::Book.new
        # book.author = author
        book.author = @author
        book.title = item['volumeInfo']['title']
        book.snippet = item['volumeInfo']['description']

        book.save
      end
    end

    private

    def author_url(max_results=20)
      "#{BASE_URL}#{@author.name_sanitizer}&maxResults=#{max_results}"
    end


  end
end
