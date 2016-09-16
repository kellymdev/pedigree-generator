class Cat < ApplicationRecord
  has_many :kittens, class_name: 'Cat', foreign_key: 'sire_id'
  has_many :offspring, class_name: 'Cat', foreign_key: 'dam_id'
  belongs_to :breed, optional: true
  belongs_to :coat_colour, optional: true
  belongs_to :user
  belongs_to :sire, class_name: 'Cat', optional: true
  belongs_to :dam, class_name: 'Cat', optional: true
  belongs_to :gender
  belongs_to :title, optional: true

  validates :name, presence: true, length: { minimum: 2 }

  def sire?
    Gender.male.include?(gender)
  end

  def dam?
    Gender.female.include?(gender)
  end

  def full_name
    if title
      "#{title.name} #{name}"
    else
      name
    end
  end

  def short_name
    if title
      "#{title.short_name} #{name}"
    else
      name
    end
  end
end
