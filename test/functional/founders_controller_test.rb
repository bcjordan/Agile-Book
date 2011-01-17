require 'test_helper'

class FoundersControllerTest < ActionController::TestCase
  setup do
    @founder = founders(:founder_one)
    @update = {
      :username => "Test User3",
      :email => "test@email.com",
      :about => "About me"
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:founders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create founder" do
    assert_difference('Founder.count') do
      post :create, :founder => @update
    end

    assert_redirected_to founder_path(assigns(:founder))
  end

  test "should show founder" do
    get :show, :id => @founder.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @founder.to_param
    assert_response :success
  end

  test "should update founder" do
    put :update, :id => @founder.to_param, :founder => @update
    assert_redirected_to founder_path(assigns(:founder))
  end

  test "should destroy founder" do
    assert_difference('Founder.count', -1) do
      delete :destroy, :id => @founder.to_param
    end

    assert_redirected_to founders_path
  end
end
