require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "user has email" do
    user = User.new(email: "iman22@gmail.com")
    assert user.email == "iman22@gmail.com"
  end

  test "should not save without gender" do
    user = User.new
    assert_not user.save, "saved the user without gender"
  end
end
