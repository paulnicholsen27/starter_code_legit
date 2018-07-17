class Character < ActiveRecord::Base

    # has_many :books, through: :book_characters
    has_many :authors, -> {distinct}, through: :books
    has_and_belongs_to_many :books
end