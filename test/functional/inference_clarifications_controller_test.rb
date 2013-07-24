require 'test_helper'

class InferenceClarificationsControllerTest < ActionController::TestCase
  setup do
    @inference_clarification = inference_clarifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inference_clarifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inference_clarification" do
    assert_difference('InferenceClarification.count') do
      post :create, inference_clarification: { clarification: @inference_clarification.clarification, inference_id: @inference_clarification.inference_id }
    end

    assert_redirected_to inference_clarification_path(assigns(:inference_clarification))
  end

  test "should show inference_clarification" do
    get :show, id: @inference_clarification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inference_clarification
    assert_response :success
  end

  test "should update inference_clarification" do
    put :update, id: @inference_clarification, inference_clarification: { clarification: @inference_clarification.clarification, inference_id: @inference_clarification.inference_id }
    assert_redirected_to inference_clarification_path(assigns(:inference_clarification))
  end

  test "should destroy inference_clarification" do
    assert_difference('InferenceClarification.count', -1) do
      delete :destroy, id: @inference_clarification
    end

    assert_redirected_to inference_clarifications_path
  end
end
