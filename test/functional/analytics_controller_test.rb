require 'test_helper'

class AnalyticsControllerTest < ActionController::TestCase
  test "should get truthiness" do
    get :truthiness
    assert_response :success
  end

end
