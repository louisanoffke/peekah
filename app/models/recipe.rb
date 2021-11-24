class Recipe < ApplicationRecord
  belongs_to :user
  validates :name, presence: true

  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients
  has_many :dishes
  has_many :restaurants, through: :dishes
end
