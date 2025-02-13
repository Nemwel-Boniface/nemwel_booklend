class Book < ApplicationRecord
  # Associations
  belongs_to :user
  has_one_attached :cover_photo
  has_many :borrowings
  has_many :borrowers, through: :borrowings, source: :user
end
