class Title < ApplicationRecord
  has_many :cats

  validates :name, presence: true, length: { minimum: 2 }
  validates :short_name, presence: true
end
