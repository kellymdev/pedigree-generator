class Breed < ApplicationRecord
  has_many :cats

  validates :name, presence: true, length: { minimum: 2 }
end
