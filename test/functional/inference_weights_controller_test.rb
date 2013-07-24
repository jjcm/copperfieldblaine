require 'test_helper'

class InferenceWeightsControllerTest < ActionController::TestCase
  setup do
    @inference_weight = inference_weights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inference_weights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inference_weight" do
    assert_difference('InferenceWeight.count') do
      post :create, inference_weight: { answer_id: @inference_weight.answer_id, inference_id: @inference_weight.inference_id, weight: @inference_weight.weight }
    end

    assert_redirected_to inference_weight_path(assigns(:inference_weight))
  end

  test "should show inference_weight" do
    get :show, id: @inference_weight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inference_weight
    assert_response :success
  end

  test "should update inference_weight" do
    put :update, id: @inference_weight, inference_weight: { answer_id: @inference_weight.answer_id, inference_id: @inference_weight.inference_id, weight: @inference_weight.weight }
    assert_redirected_to inference_weight_path(assigns(:inference_weight))
  end

  test "should destroy inference_weight" do
    assert_difference('InferenceWeight.count', -1) do
      delete :destroy, id: @inference_weight
    end

    assert_redirected_to inference_weights_path
  end
end
