require 'test_helper'

class SimplefromsControllerTest < ActionController::TestCase
  setup do
    @simplefrom = simplefroms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:simplefroms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create simplefrom" do
    assert_difference('Simplefrom.count') do
      post :create, simplefrom: { email: @simplefrom.email, name: @simplefrom.name, year: @simplefrom.year }
    end

    assert_redirected_to simplefrom_path(assigns(:simplefrom))
  end

  test "should show simplefrom" do
    get :show, id: @simplefrom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @simplefrom
    assert_response :success
  end

  test "should update simplefrom" do
    patch :update, id: @simplefrom, simplefrom: { email: @simplefrom.email, name: @simplefrom.name, year: @simplefrom.year }
    assert_redirected_to simplefrom_path(assigns(:simplefrom))
  end

  test "should destroy simplefrom" do
    assert_difference('Simplefrom.count', -1) do
      delete :destroy, id: @simplefrom
    end

    assert_redirected_to simplefroms_path
  end
end
