class BorrowingsController < ApplicationController
  def index
    @borrowings = current_user.borrowings.includes(:book)
  end

  def new
    @borrowing = Borrowing.new
  end

  def create
    @borrowing = current_user.borrowings.build(borrowing_params)

    if @borrowing.save
      @borrowing.book.update(available: false)
      redirect_to borrowings_path, notice: 'Book was successfully borrowed.'
    else
      render :new
    end
  end

  private

  def borrowing_params
    params.require(:borrowing).permit(:book_id)
  end
end
