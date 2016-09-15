class Cat < ApplicationRecord
  has_many :kittens, class_name: "Cat", foreign_key: "sire_id"
  has_many :offspring, class_name: "Cat", foreign_key: "dam_id"
  belongs_to :breed, optional: true
  belongs_to :coat_colour, optional: true
  belongs_to :user
  belongs_to :sire, class_name: "Cat", optional: true
  belongs_to :dam, class_name: "Cat", optional: true
  belongs_to :gender

  validates :name, presence: true, length: { minimum: 2 }

  def is_sire?
    Gender.male.include?(gender)
  end

  def is_dam?
    Gender.female.include?(gender)
  end
end
