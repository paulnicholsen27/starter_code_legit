class Owner < ApplicationRecord
validates :name, presence: true, uniqueness: true

  has_many :adoptions, dependent: :destroy
  has_many :pets, through: :adoptions
end
