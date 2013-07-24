require 'test_helper'

class LifestyleCuesControllerTest < ActionController::TestCase
  setup do
    @lifestyle_cue = lifestyle_cues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lifestyle_cues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lifestyle_cue" do
    assert_difference('LifestyleCue.count') do
      post :create, lifestyle_cue: { cue: @lifestyle_cue.cue }
    end

    assert_redirected_to lifestyle_cue_path(assigns(:lifestyle_cue))
  end

  test "should show lifestyle_cue" do
    get :show, id: @lifestyle_cue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lifestyle_cue
    assert_response :success
  end

  test "should update lifestyle_cue" do
    put :update, id: @lifestyle_cue, lifestyle_cue: { cue: @lifestyle_cue.cue }
    assert_redirected_to lifestyle_cue_path(assigns(:lifestyle_cue))
  end

  test "should destroy lifestyle_cue" do
    assert_difference('LifestyleCue.count', -1) do
      delete :destroy, id: @lifestyle_cue
    end

    assert_redirected_to lifestyle_cues_path
  end
end
