require 'test_helper'

class TestaControllerTest < ActionController::TestCase
  setup do
    @testum = testa(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testa)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testum" do
    assert_difference('Testum.count') do
      post :create, testum: { t: @testum.t }
    end

    assert_redirected_to testum_path(assigns(:testum))
  end

  test "should show testum" do
    get :show, id: @testum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testum
    assert_response :success
  end

  test "should update testum" do
    patch :update, id: @testum, testum: { t: @testum.t }
    assert_redirected_to testum_path(assigns(:testum))
  end

  test "should destroy testum" do
    assert_difference('Testum.count', -1) do
      delete :destroy, id: @testum
    end

    assert_redirected_to testa_path
  end
end
