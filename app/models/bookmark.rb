class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  has_many :lists
  validates :comment, length: { minimum: 6 }
  validates :list, uniqueness: {scope: :movie}
end

