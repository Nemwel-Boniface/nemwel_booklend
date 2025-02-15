require "test_helper"

class BorrowingTest < ActiveSupport::TestCase
  setup do
    @borrowing = borrowings(:one)
    @book = @borrowing.book
    @book.update(available: false)
  end

  test "should be valid with valid attributes" do
    assert @borrowing.valid?
  end

  test "should require a user" do
    @borrowing.user = nil
    assert_not @borrowing.valid?
    assert_includes @borrowing.errors[:user], "must exist"
  end

  test "should require a book" do
    @borrowing.book = nil
    assert_not @borrowing.valid?
    assert_includes @borrowing.errors[:book], "must exist"
  end

  test "should belong to a user" do
    assert_respond_to @borrowing, :user
  end

  test "should belong to a book" do
    assert_respond_to @borrowing, :book
  end

  test "should mark the associated book as available" do
    assert_not @book.available
    @borrowing.return_book
    @book.reload
    assert @book.available
  end

  test "should destroy the borrowing record" do
    assert_difference('Borrowing.count', -1) do
      @borrowing.return_book
    end
  end
end
