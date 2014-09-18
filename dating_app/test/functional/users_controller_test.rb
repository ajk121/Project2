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
      post :create, user: { about_me: @user.about_me, age: @user.age, city: @user.city, email: @user.email, eyes_color: @user.eyes_color, favourite_language: @user.favourite_language, gender: @user.gender, hair_color: @user.hair_color, height: @user.height, name: @user.name, sex_preference: @user.sex_preference, smoker: @user.smoker }
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
    put :update, id: @user, user: { about_me: @user.about_me, age: @user.age, city: @user.city, email: @user.email, eyes_color: @user.eyes_color, favourite_language: @user.favourite_language, gender: @user.gender, hair_color: @user.hair_color, height: @user.height, name: @user.name, sex_preference: @user.sex_preference, smoker: @user.smoker }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
