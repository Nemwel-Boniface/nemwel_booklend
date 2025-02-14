class Borrowing < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :book

  # Validations
  validates :borrowed_at, presence: true
  validates :due_at, presence: true
  
  def return_book
    book.update(available: true)
    destroy
  end

  # Call backs
  before_create :set_due_date

  private

  def set_due_date
    self.due_date = 2.weeks.from_now
  end
end
