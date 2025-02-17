require "test_helper"

class BookTest < ActiveSupport::TestCase
  setup do
    @book = books(:one)
  end

  test "should be valid with valid attributes" do
    assert @book.valid?
  end

  test "should require a title" do
    @book.title = ""
    assert_not @book.valid?
    assert_includes @book.errors[:title], "can't be blank"
  end

  test "should require an author" do
    @book.author = ""
    assert_not @book.valid?
    assert_includes @book.errors[:author], "can't be blank"
  end

  test "should require an isbn" do
    @book.isbn = ""
    assert_not @book.valid?
    assert_includes @book.errors[:isbn], "can't be blank"
  end

  test "isbn should be unique" do
    duplicate_book = @book.dup
    assert_not duplicate_book.valid?
    assert_includes duplicate_book.errors[:isbn], "has already been taken"
  end

  test "description should not exceed 1000 characters" do
    @book.description = "a" * 1001
    assert_not @book.valid?
    assert_includes @book.errors[:description], "is too long (maximum is 1000 characters)"
  end

  test "should belong to a user" do
    assert_not_nil @book.user
  end

  test "should have many borrowings" do
    assert_respond_to @book, :borrowings
  end

  test "should have many borrowers through borrowings" do
    assert_respond_to @book, :borrowers
  end
end
