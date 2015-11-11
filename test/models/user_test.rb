require "test_helper"

class UserTest < ActiveSupport::TestCase

  test "don't save user without name" do
    user = User.new
    assert_not user.save
  end

  test "don't save user with same name" do
    user = User.new
    assert_not user.save
  end

end