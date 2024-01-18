class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  # before_destroy :set_destroyed_by_parent, prepend: true

  validates :title, :overview, presence: true
  validates :title, uniqueness: true

end
