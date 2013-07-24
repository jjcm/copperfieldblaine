require 'test_helper'

class InferenceClarificationWeightsControllerTest < ActionController::TestCase
  setup do
    @inference_clarification_weight = inference_clarification_weights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inference_clarification_weights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inference_clarification_weight" do
    assert_difference('InferenceClarificationWeight.count') do
      post :create, inference_clarification_weight: { inference_clarification_id: @inference_clarification_weight.inference_clarification_id, inference_id: @inference_clarification_weight.inference_id, weight: @inference_clarification_weight.weight }
    end

    assert_redirected_to inference_clarification_weight_path(assigns(:inference_clarification_weight))
  end

  test "should show inference_clarification_weight" do
    get :show, id: @inference_clarification_weight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inference_clarification_weight
    assert_response :success
  end

  test "should update inference_clarification_weight" do
    put :update, id: @inference_clarification_weight, inference_clarification_weight: { inference_clarification_id: @inference_clarification_weight.inference_clarification_id, inference_id: @inference_clarification_weight.inference_id, weight: @inference_clarification_weight.weight }
    assert_redirected_to inference_clarification_weight_path(assigns(:inference_clarification_weight))
  end

  test "should destroy inference_clarification_weight" do
    assert_difference('InferenceClarificationWeight.count', -1) do
      delete :destroy, id: @inference_clarification_weight
    end

    assert_redirected_to inference_clarification_weights_path
  end
end
