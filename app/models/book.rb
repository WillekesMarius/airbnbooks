class Book < ApplicationRecord
  belongs_to :git 
  has_many :rentals

  validates :title, presence: true
  validates :year, presence: true
  validates :author, presence: true
  validates :overview, presence: true, length: { maximum: 500 }
  validates :genre, presence: true
end
