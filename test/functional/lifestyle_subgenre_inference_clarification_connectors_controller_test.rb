require 'test_helper'

class LifestyleSubgenreInferenceClarificationConnectorsControllerTest < ActionController::TestCase
  setup do
    @lifestyle_subgenre_inference_clarification_connector = lifestyle_subgenre_inference_clarification_connectors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lifestyle_subgenre_inference_clarification_connectors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lifestyle_subgenre_inference_clarification_connector" do
    assert_difference('LifestyleSubgenreInferenceClarificationConnector.count') do
      post :create, lifestyle_subgenre_inference_clarification_connector: {  }
    end

    assert_redirected_to lifestyle_subgenre_inference_clarification_connector_path(assigns(:lifestyle_subgenre_inference_clarification_connector))
  end

  test "should show lifestyle_subgenre_inference_clarification_connector" do
    get :show, id: @lifestyle_subgenre_inference_clarification_connector
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lifestyle_subgenre_inference_clarification_connector
    assert_response :success
  end

  test "should update lifestyle_subgenre_inference_clarification_connector" do
    put :update, id: @lifestyle_subgenre_inference_clarification_connector, lifestyle_subgenre_inference_clarification_connector: {  }
    assert_redirected_to lifestyle_subgenre_inference_clarification_connector_path(assigns(:lifestyle_subgenre_inference_clarification_connector))
  end

  test "should destroy lifestyle_subgenre_inference_clarification_connector" do
    assert_difference('LifestyleSubgenreInferenceClarificationConnector.count', -1) do
      delete :destroy, id: @lifestyle_subgenre_inference_clarification_connector
    end

    assert_redirected_to lifestyle_subgenre_inference_clarification_connectors_path
  end
end
