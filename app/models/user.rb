class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # Call backs
  after_create :assign_as_admin


  # Associations
  has_one_attached :photo
  has_many :books, dependent: :destroy
  has_many :borrowings
  has_many :borrowed_books, through: :borrowings, source: :book

  def admin?
    role == 'admin'
  end

  def user?
    role == 'user'
  end

  private

  def assign_as_admin
    if User.count == 1
      self.update(role: 'admin')
    end
  end
end
