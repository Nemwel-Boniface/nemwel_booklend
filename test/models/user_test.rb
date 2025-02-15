require "test_helper"

class UserTest < ActiveSupport::TestCase
  fixtures :users

  test "User details is valid" do
    user = users(:one)
    assert user.valid?
  end

  test "The user details must contains an email" do
    user = users(:one)
    user.email = ""
    assert_not user.valid?
  end

  test "The user details must contains a bio" do
    user = users(:one)
    user.bio = ""
    assert_not user.valid?
  end

  test "The user details must contains a mobile phone" do
    user = users(:one)
    user.mobile = ""
    assert_not user.valid?
  end

  test "email should be unique" do
    user = users(:one)
    duplicate_user = user.dup
    user.save!
    assert_not duplicate_user.valid?
  end
end
