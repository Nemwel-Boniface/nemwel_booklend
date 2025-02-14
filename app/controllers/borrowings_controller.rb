class BorrowingsController < ApplicationController
  before_action :set_borrowing, only: [:return]
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

  def return
    @borrowing.return_book
    redirect_to borrowings_path, notice: 'Book was successfully returned.'
  end

  private

  def set_borrowing
    @borrowing = Borrowing.find(params[:id])
  end

  def borrowing_params
    params.require(:borrowing).permit(:book_id)
  end
end
