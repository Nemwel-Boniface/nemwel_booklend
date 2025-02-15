require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  include ActionDispatch::TestProcess::FixtureFile
  setup do
    @user = users(:one)
    sign_in users(:one)
    @book = books(:one)
    sign_in @user
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get show" do
    get book_url(@book)
    assert_response :success
  end

  test "should redirect new if user is not admin" do
    sign_in @user
    get new_book_url
    assert_redirected_to root_path
    assert_equal 'Access denied.', flash[:alert]
  end

  test "should create book" do
    sign_in @user
    assert_difference('Book.count', 1) do
      post books_url, params: {
        book: {
          title: 'New Book',
          author: 'Author',
          isbn: '12345',
          description: 'Description',
          cover_photo: fixture_file_upload(Rails.root.join('test/fixtures/files/The-Mountain-Is-You-nuriakenya.jpg'), 'image/jpeg')
        }
      }
    end
  end

  test "should not create book with invalid data" do
    sign_in @user
    assert_no_difference('Book.count') do
      post books_url, params: { book: { title: '', author: 'Author', isbn: '', description: 'Description' } }
    end
  end

  test "should get edit if user is admin" do
    sign_in @user
    get edit_book_url(@book)
    assert_response :success
  end

  test "should redirect edit if user is not admin" do
    sign_in @user
    get edit_book_url(@book)
    assert_redirected_to root_path
  end

  test "should update book" do
    sign_in @user
    patch book_url(@book), params: { book: { title: 'Updated Book', author: 'Updated Author', isbn: '67890', description: 'Updated description' } }
    assert_redirected_to book_url(@book)
    @book.reload
    assert_equal 'Updated Book', @book.title
  end

  test "should not update book with invalid data" do
    sign_in @user
    patch book_url(@book), params: { book: { title: '', author: '', isbn: '', description: '' } }
    assert_template :edit
  end

  test "should destroy book" do
    sign_in @user
    assert_difference('Book.count', -1) do
      delete book_url(@book)
    end
    assert_redirected_to books_url
  end
end
