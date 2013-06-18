require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, id: users(:michael).profile_name
    
    assert_response :success
    assert_template 'profiles/show'
  end
  
  test "should render 404 on profile not found" do
    get :show, id: "does not exit"
    
    assert_response :not_found
  end
  
  test "user variable is assigned on successful requests" do
    get :show, id: users(:michael).profile_name
    
    assert assigns(:user)
    assert_not_empty assigns(:statuses)
  end
  
  test "only shows the correct user status" do
    get :show, id: users(:michael).profile_name
    assigns(:statuses).each do |status|
      assert_equal users(:michael), status.user
    end
    
  end

end
