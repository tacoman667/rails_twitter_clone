require 'test_helper'

class YellsControllerTest < ActionController::TestCase
  setup do
    @yell = yells(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yells)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yell" do
    assert_difference('Yell.count') do
      post :create, yell: { content: @yell.content, user_name: @yell.user_name }
    end

    assert_redirected_to yell_path(assigns(:yell))
  end

  test "should show yell" do
    get :show, id: @yell
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yell
    assert_response :success
  end

  test "should update yell" do
    patch :update, id: @yell, yell: { content: @yell.content, user_name: @yell.user_name }
    assert_redirected_to yell_path(assigns(:yell))
  end

  test "should destroy yell" do
    assert_difference('Yell.count', -1) do
      delete :destroy, id: @yell
    end

    assert_redirected_to yells_path
  end
end
