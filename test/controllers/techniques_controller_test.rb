require 'test_helper'

class TechniquesControllerTest < ActionController::TestCase
  setup do
    @technique = techniques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:techniques)
  end

  test "should create technique" do
    assert_difference('Technique.count') do
      post :create, technique: { description: @technique.description, name: @technique.name, status: @technique.status }
    end

    assert_response 201
  end

  test "should show technique" do
    get :show, id: @technique
    assert_response :success
  end

  test "should update technique" do
    put :update, id: @technique, technique: { description: @technique.description, name: @technique.name, status: @technique.status }
    assert_response 204
  end

  test "should destroy technique" do
    assert_difference('Technique.count', -1) do
      delete :destroy, id: @technique
    end

    assert_response 204
  end
end
