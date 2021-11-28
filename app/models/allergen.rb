class Allergen < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  # cloudinary:
  has_one_attached :photo

  # pg-search:
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :note ],
    associated_against: {
      recipe: :description
    },
    using: {
      tsearch: { prefix: true }
    }
end
