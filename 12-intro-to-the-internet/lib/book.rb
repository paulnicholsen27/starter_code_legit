class Book < ActiveRecord::Base

    belongs_to :author
    has_many :book_characters
    has_many :characters, through: :book_characters


end