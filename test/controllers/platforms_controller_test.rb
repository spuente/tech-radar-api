require 'test_helper'

class PlatformsControllerTest < ActionController::TestCase
  setup do
    @platform = platforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:platforms)
  end

  test "should create platform" do
    assert_difference('Platform.count') do
      post :create, platform: { description: @platform.description, name: @platform.name, status: @platform.status }
    end

    assert_response 201
  end

  test "should show platform" do
    get :show, id: @platform
    assert_response :success
  end

  test "should update platform" do
    put :update, id: @platform, platform: { description: @platform.description, name: @platform.name, status: @platform.status }
    assert_response 204
  end

  test "should destroy platform" do
    assert_difference('Platform.count', -1) do
      delete :destroy, id: @platform
    end

    assert_response 204
  end
end
