require 'test_helper'

class LifestyleCueInferenceConnectorsControllerTest < ActionController::TestCase
  setup do
    @lifestyle_cue_inference_connector = lifestyle_cue_inference_connectors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lifestyle_cue_inference_connectors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lifestyle_cue_inference_connector" do
    assert_difference('LifestyleCueInferenceConnector.count') do
      post :create, lifestyle_cue_inference_connector: {  }
    end

    assert_redirected_to lifestyle_cue_inference_connector_path(assigns(:lifestyle_cue_inference_connector))
  end

  test "should show lifestyle_cue_inference_connector" do
    get :show, id: @lifestyle_cue_inference_connector
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lifestyle_cue_inference_connector
    assert_response :success
  end

  test "should update lifestyle_cue_inference_connector" do
    put :update, id: @lifestyle_cue_inference_connector, lifestyle_cue_inference_connector: {  }
    assert_redirected_to lifestyle_cue_inference_connector_path(assigns(:lifestyle_cue_inference_connector))
  end

  test "should destroy lifestyle_cue_inference_connector" do
    assert_difference('LifestyleCueInferenceConnector.count', -1) do
      delete :destroy, id: @lifestyle_cue_inference_connector
    end

    assert_redirected_to lifestyle_cue_inference_connectors_path
  end
end
