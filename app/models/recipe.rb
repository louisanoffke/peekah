class Recipe < ApplicationRecord
  belongs_to :user
  validates :name, presence: true

  has_many :ingredients, through: :recipe_ingredients
end
