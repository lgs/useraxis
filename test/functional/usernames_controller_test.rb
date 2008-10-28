require 'test_helper'

class UsernamesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:usernames)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_username
    assert_difference('Username.count') do
      post :create, :username => { }
    end

    assert_redirected_to username_path(assigns(:username))
  end

  def test_should_show_username
    get :show, :id => usernames(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => usernames(:one).id
    assert_response :success
  end

  def test_should_update_username
    put :update, :id => usernames(:one).id, :username => { }
    assert_redirected_to username_path(assigns(:username))
  end

  def test_should_destroy_username
    assert_difference('Username.count', -1) do
      delete :destroy, :id => usernames(:one).id
    end

    assert_redirected_to usernames_path
  end
end
