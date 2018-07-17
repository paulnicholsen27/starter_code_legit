class Pet < ApplicationRecord
  has_many :adoptions, dependent: :destroy
  has_many :owners, through: :adoptions
end
