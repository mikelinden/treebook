require 'test_helper'

class UserFriendshipTest < ActiveSupport::TestCase

  should belong_to(:user)
  should belong_to(:friend)

  test "that creating a friendship works" do
    assert_nothing_raised do
      UserFriendship.create user: users(:michael), friend: users(:joey)
    end
  end
  
  test "that create a friendship based on users id works" do
    UserFriendship.create user_id: users(:michael).id, friend_id: users(:joey).id
    assert users(:michael).friends.include?(users(:joey))
  end
  
end
