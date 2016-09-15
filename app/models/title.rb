class Title < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2 }
  validates :short_name, presence: true
end
