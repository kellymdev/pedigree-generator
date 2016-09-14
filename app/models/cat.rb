class Cat < ApplicationRecord
  belongs_to :breed
  belongs_to :coat_colour
  belongs_to :user

  validates :name, presence: true, length: { minimum: 2 }
end
