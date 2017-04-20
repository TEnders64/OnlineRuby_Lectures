require 'test_helper'

class DashboardsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get checkout" do
    get :checkout
    assert_response :success
  end

end
