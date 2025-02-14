class Book < ApplicationRecord
  # Associations
  belongs_to :user
  has_one_attached :cover_photo
  has_many :borrowings
  has_many :borrowers, through: :borrowings, source: :user

  # Validations
  validates :title, presence: true
  validates :author, presence: true
  validates :isbn, presence: true, uniqueness: true
  validates :published_at, presence: true
  validates :description, length: { maximum: 1000 }
end
