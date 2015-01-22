require 'test_helper'

class CantadasControllerTest < ActionController::TestCase
  test "get create as json" do
    get :create, format: :json
    assert_response :success
  end
  
  test "get create as xml" do
    get :create, format: :xml
    assert_response :success
  end

  test "get list as json" do
    get :list, format: :json
    assert_response :success
  end

  test "get list as xml" do
    get :list, format: :xml
    assert_response :success
  end

end
