require 'test_helper'

class DataControllerTest < ActionController::TestCase

  test "get datasource as json" do
    get :datasource, format: :json
    assert_response :success
  end

  test "get datasource as xml" do
    get :datasource, format: :xml
    assert_response :success
  end

end
