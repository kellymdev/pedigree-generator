class Cat < ApplicationRecord
  has_many :kittens, class_name: "Cat", foreign_key: "sire_id"
  belongs_to :breed
  belongs_to :coat_colour
  belongs_to :user
  belongs_to :sire, class_name: "Cat", optional: true

  validates :name, presence: true, length: { minimum: 2 }
end
