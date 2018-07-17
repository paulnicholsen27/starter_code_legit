class CreateAdoptions < ActiveRecord::Migration[5.2]
  def change
    create_table :adoptions do |t|
      t.belongs_to :pet, foreign_key: true
      t.belongs_to :owner, foreign_key: true

      t.timestamps
    end
  end
end
