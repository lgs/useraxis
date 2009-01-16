require 'test_helper'

class Str2md5sControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:str2md5s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create str2md5" do
    assert_difference('Str2md5.count') do
      post :create, :str2md5 => { }
    end

    assert_redirected_to str2md5_path(assigns(:str2md5))
  end

  test "should show str2md5" do
    get :show, :id => str2md5s(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => str2md5s(:one).id
    assert_response :success
  end

  test "should update str2md5" do
    put :update, :id => str2md5s(:one).id, :str2md5 => { }
    assert_redirected_to str2md5_path(assigns(:str2md5))
  end

  test "should destroy str2md5" do
    assert_difference('Str2md5.count', -1) do
      delete :destroy, :id => str2md5s(:one).id
    end

    assert_redirected_to str2md5s_path
  end
end
