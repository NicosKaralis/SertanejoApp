require 'test_helper'

class DataControllerTest < ActionController::TestCase
  test "should get datasource" do
    get :datasource, format: :json
    assert_response :success
  end

end
