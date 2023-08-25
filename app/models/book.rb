class Book < ApplicationRecord
  belongs_to :user
  has_many :rentals

  validates :title, presence: true
  validates :year, presence: true
  validates :author, presence: true
  validates :overview, presence: true, length: { maximum: 500 }
  validates :genre, presence: true


  include PgSearch::Model
  pg_search_scope :search_by_title_and_author_overview_genre,
    against: [ :title, :author, :overview, :genre ],
    using: {
      tsearch: { prefix: true }
    }
end
