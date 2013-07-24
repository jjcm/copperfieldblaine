require 'test_helper'

class LifestyleSubgenresControllerTest < ActionController::TestCase
  setup do
    @lifestyle_subgenre = lifestyle_subgenres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lifestyle_subgenres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lifestyle_subgenre" do
    assert_difference('LifestyleSubgenre.count') do
      post :create, lifestyle_subgenre: { genre: @lifestyle_subgenre.genre, lifestyle_cue_id: @lifestyle_subgenre.lifestyle_cue_id }
    end

    assert_redirected_to lifestyle_subgenre_path(assigns(:lifestyle_subgenre))
  end

  test "should show lifestyle_subgenre" do
    get :show, id: @lifestyle_subgenre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lifestyle_subgenre
    assert_response :success
  end

  test "should update lifestyle_subgenre" do
    put :update, id: @lifestyle_subgenre, lifestyle_subgenre: { genre: @lifestyle_subgenre.genre, lifestyle_cue_id: @lifestyle_subgenre.lifestyle_cue_id }
    assert_redirected_to lifestyle_subgenre_path(assigns(:lifestyle_subgenre))
  end

  test "should destroy lifestyle_subgenre" do
    assert_difference('LifestyleSubgenre.count', -1) do
      delete :destroy, id: @lifestyle_subgenre
    end

    assert_redirected_to lifestyle_subgenres_path
  end
end
