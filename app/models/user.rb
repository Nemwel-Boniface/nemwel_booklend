class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Associations
  has_one_attached :photo
  has_many :books, dependent: :destroy
  has_many :borrowings
  has_many :borrowed_books, through: :borrowings, source: :book
end
