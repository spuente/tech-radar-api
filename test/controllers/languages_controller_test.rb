require 'test_helper'

class LanguagesControllerTest < ActionController::TestCase
  setup do
    @language = languages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:languages)
  end

  test "should create language" do
    assert_difference('Language.count') do
      post :create, language: { description: @language.description, name: @language.name, status: @language.status }
    end

    assert_response 201
  end

  test "should show language" do
    get :show, id: @language
    assert_response :success
  end

  test "should update language" do
    put :update, id: @language, language: { description: @language.description, name: @language.name, status: @language.status }
    assert_response 204
  end

  test "should destroy language" do
    assert_difference('Language.count', -1) do
      delete :destroy, id: @language
    end

    assert_response 204
  end
end