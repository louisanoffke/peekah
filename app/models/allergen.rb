class Allergen < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  # cloudinary:
  has_one_attached :photo

  # pg-search:
  include PgSearch::Model
  pg_search_scope :search_by_name_and_note,
    against: [ :name, :note ],
    using: {
      tsearch: { any_word: true }
    }

  pg_search_scope :search_by_name,
    against: [ :name, :note ],
    using: {
      tsearch: { any_word: true }
    }
end
