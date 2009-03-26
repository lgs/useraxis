require 'test_helper'

class TagometersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tagometers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tagometer" do
    assert_difference('Tagometer.count') do
      post :create, :tagometer => { }
    end

    assert_redirected_to tagometer_path(assigns(:tagometer))
  end

  test "should show tagometer" do
    get :show, :id => tagometers(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tagometers(:one).id
    assert_response :success
  end

  test "should update tagometer" do
    put :update, :id => tagometers(:one).id, :tagometer => { }
    assert_redirected_to tagometer_path(assigns(:tagometer))
  end

  test "should destroy tagometer" do
    assert_difference('Tagometer.count', -1) do
      delete :destroy, :id => tagometers(:one).id
    end

    assert_redirected_to tagometers_path
  end
end
