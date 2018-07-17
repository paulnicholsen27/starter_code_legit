require 'require_all'
require_relative '../config/environment.rb'
require_all 'lib'

Author.find_or_create_by(name: "Mark Twain")
Author.find_or_create_by(name: "Charles Dickens")
Author.find_or_create_by(name: "Maya Angelou")
Author.find_or_create_by(name: "Charlotte Bronte")
Author.find_or_create_by(name: "Shel Silverstein")
jk = Author.find_or_create_by(name: "J.K. Rowling")

ss = Book.find_or_create_by(title: "Harry Potter and the Sorcerer's Stone", author: jk)
cos = Book.find_or_create_by(title: "Harry Potter and the Chamber of Secrets", author: jk)
poa = Book.find_or_create_by(title: "Harry Potter and the Prisoner of Azkaban", author: jk)
gof = Book.find_or_create_by(title: "Harry Potter and the Goblet of Fire", author: jk)
ootp = Book.find_or_create_by(title: "Harry Potter and the Order of the Phoenix", author: jk)
hbp = Book.find_or_create_by(title: "Harry Potter and the Half Blood Prince", author: jk)
dh = Book.find_or_create_by(title: "Harry Potter and the Deathly Hallows", author: jk)

harry = Character.find_or_create_by(name: "Harry Potter")
tonks = Character.find_or_create_by(name: "Nymphadora Tonks")

def add_char_to_book(character, book_list)
    book_list.each do |book|
        character.books << book unless character.books.include?(book)
    end
end

add_char_to_book(harry, [ss, cos, poa, gof, ootp, hbp, dh])
add_char_to_book(tonks, [ootp, hbp, dh])