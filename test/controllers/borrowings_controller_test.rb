require "test_helper"

class BorrowingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get borrowings_index_url
    assert_response :success
  end

  test "should get new" do
    get borrowings_new_url
    assert_response :success
  end

  test "should get create" do
    get borrowings_create_url
    assert_response :success
  end
end
