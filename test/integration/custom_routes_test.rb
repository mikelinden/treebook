require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test 'that /login open the login page' do
    get '/login'
    assert_response :success
  end
  
  test 'that /logout open the logout page' do
    get '/logout'
    assert_response :redirect
    assert_redirected_to '/'
  end
  
    test 'that profie page works' do
    get '/michael'
    assert_response :success
  end
end
