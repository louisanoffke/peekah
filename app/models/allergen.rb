class Allergen < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_one_attached :photo
end
