class Review < ApplicationRecord
  belongs_to :list
  validates :comment, presence: true
  validates :rating, presence: true, numericality: { in: 1..5 }
end
