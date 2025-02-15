class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # Call backs
  after_create :assign_as_admin

  # Validations
  validates :bio, :mobile, presence: true
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { minimum: 6 }, if: :password_required?
  validates :bio, length: { maximum: 500 }

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

  def password_required?
    password.present? || password_confirmation.present?
  end

  def assign_as_admin
    if User.count == 1
      self.update(role: 'admin')
    end
  end
end
