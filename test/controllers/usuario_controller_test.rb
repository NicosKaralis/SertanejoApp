require 'test_helper'

class UsuarioControllerTest < ActionController::TestCase
  test "get buscar as json" do
    get :buscar, format: :json
    assert_response :success
  end

  test "get buscar as xml" do
    get :buscar, format: :xml
    assert_response :success
  end

  test "get update as json" do
    get :update, format: :json
    assert_response :success
  end

  test "get update as xml" do
    get :update, format: :xml
    assert_response :success
  end
  
end
