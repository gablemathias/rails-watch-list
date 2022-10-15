class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 7 }
  validates :movie_id, uniqueness: { scope: :list_id }

  belongs_to :movie
  belongs_to :list
end
