class CreateBookCharacterJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :book_characters do |t|
        t.integer :book_id
        t.integer :character_id
    end
  end
end
