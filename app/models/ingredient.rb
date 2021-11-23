class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
