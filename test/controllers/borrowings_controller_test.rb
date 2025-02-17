require "test_helper"

class BorrowingsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @user = users(:one) 
    @book = books(:one)
    @borrowing = borrowings(:one)
  end

  test "should get index" do
    sign_in @user
    get borrowings_url
    assert_response :success
    assert_not_nil assigns(:borrowings)
  end

  test "should get new" do
    sign_in @user
    get new_borrowing_url
    assert_response :success
  end

  test "should create borrowing" do
    sign_in @user
    assert_difference('Borrowing.count') do
      post borrowings_url, params: { borrowing: { book_id: @book.id } }
    end
    assert_redirected_to borrowings_path
    assert_equal 'Book was successfully borrowed.', flash[:notice]
    @book.reload
    assert_not @book.available
  end

  test "should not create borrowing without book_id" do
    sign_in @user
    assert_no_difference('Borrowing.count') do
      post borrowings_url, params: { borrowing: { book_id: nil } }
    end
    assert_response :success
  end
  

  test "should return book" do
    sign_in @user
    @borrowing = Borrowing.create(user: @user, book: @book)
    assert_difference('Borrowing.count', -1) do
      patch return_borrowing_url(@borrowing)
    end
    assert_redirected_to borrowings_path
    assert_equal 'Book was successfully returned.', flash[:notice]
    @book.reload
    assert @book.available
  end

  private

  def borrowing_params
    { book_id: @book.id }
  end
end
