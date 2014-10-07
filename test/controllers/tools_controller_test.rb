require 'test_helper'

class ToolsControllerTest < ActionController::TestCase
  setup do
    @tool = tools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tools)
  end

  test "should create tool" do
    assert_difference('Tool.count') do
      post :create, tool: { description: @tool.description, name: @tool.name, status: @tool.status }
    end

    assert_response 201
  end

  test "should show tool" do
    get :show, id: @tool
    assert_response :success
  end

  test "should update tool" do
    put :update, id: @tool, tool: { description: @tool.description, name: @tool.name, status: @tool.status }
    assert_response 204
  end

  test "should destroy tool" do
    assert_difference('Tool.count', -1) do
      delete :destroy, id: @tool
    end

    assert_response 204
  end
end
