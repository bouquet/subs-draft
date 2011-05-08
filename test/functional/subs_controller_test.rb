require 'test_helper'

class SubsControllerTest < ActionController::TestCase
  setup do
    @sub = subs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub" do
    assert_difference('Sub.count') do
      post :create, :sub => @sub.attributes
    end

    assert_redirected_to sub_path(assigns(:sub))
  end

  test "should show sub" do
    get :show, :id => @sub.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sub.to_param
    assert_response :success
  end

  test "should update sub" do
    put :update, :id => @sub.to_param, :sub => @sub.attributes
    assert_redirected_to sub_path(assigns(:sub))
  end

  test "should destroy sub" do
    assert_difference('Sub.count', -1) do
      delete :destroy, :id => @sub.to_param
    end

    assert_redirected_to subs_path
  end
end
