require 'test_helper'

class DataControllerTest < ActionController::TestCase
  test "should get datasource" do
    get :datasource
    assert_response :success
  end

end