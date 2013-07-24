require 'test_helper'

class UserInferenceResponsesControllerTest < ActionController::TestCase
  setup do
    @user_inference_response = user_inference_responses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_inference_responses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_inference_response" do
    assert_difference('UserInferenceResponse.count') do
      post :create, user_inference_response: { inference_id: @user_inference_response.inference_id, response: @user_inference_response.response }
    end

    assert_redirected_to user_inference_response_path(assigns(:user_inference_response))
  end

  test "should show user_inference_response" do
    get :show, id: @user_inference_response
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_inference_response
    assert_response :success
  end

  test "should update user_inference_response" do
    put :update, id: @user_inference_response, user_inference_response: { inference_id: @user_inference_response.inference_id, response: @user_inference_response.response }
    assert_redirected_to user_inference_response_path(assigns(:user_inference_response))
  end

  test "should destroy user_inference_response" do
    assert_difference('UserInferenceResponse.count', -1) do
      delete :destroy, id: @user_inference_response
    end

    assert_redirected_to user_inference_responses_path
  end
end
