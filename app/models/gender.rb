class Gender < ApplicationRecord
  has_many :cats

  validates :name, presence: true

  scope :female, -> { where "name = 'Female' OR name = 'Spay'" }
  scope :male, -> { where "name = 'Male' or name = 'Neuter'" }
end
