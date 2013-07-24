require 'test_helper'

class InferencesControllerTest < ActionController::TestCase
  setup do
    @inference = inferences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inferences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inference" do
    assert_difference('Inference.count') do
      post :create, inference: { inference: @inference.inference }
    end

    assert_redirected_to inference_path(assigns(:inference))
  end

  test "should show inference" do
    get :show, id: @inference
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inference
    assert_response :success
  end

  test "should update inference" do
    put :update, id: @inference, inference: { inference: @inference.inference }
    assert_redirected_to inference_path(assigns(:inference))
  end

  test "should destroy inference" do
    assert_difference('Inference.count', -1) do
      delete :destroy, id: @inference
    end

    assert_redirected_to inferences_path
  end
end
