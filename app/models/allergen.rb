class Allergen < ApplicationRecord
  validates :name, presence: true, uniqueness: true

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
