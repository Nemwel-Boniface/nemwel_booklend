class Book < ApplicationRecord
  # Associations
  belongs_to :user
  has_one_attached :cover_photo
end
