require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { image: @user.image, last_seen: @user.last_seen, mail: @user.mail, name: @user.name, roles: @user.roles, siso_active: @user.siso_active, siso_gid: @user.siso_gid, siso_uid: @user.siso_uid }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { image: @user.image, last_seen: @user.last_seen, mail: @user.mail, name: @user.name, roles: @user.roles, siso_active: @user.siso_active, siso_gid: @user.siso_gid, siso_uid: @user.siso_uid }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
