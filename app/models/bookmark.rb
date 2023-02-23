class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  # validates_uniqueness_of :mvoie, scope: :list
  validates :movie, uniqueness: { scope: :list }
  validates :comment, length: { minimum: 6 }
end
