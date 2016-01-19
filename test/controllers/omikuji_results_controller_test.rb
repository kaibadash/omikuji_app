require 'test_helper'

class OmikujiResultsControllerTest < ActionController::TestCase
  setup do
    @omikuji_result = omikuji_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:omikuji_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create omikuji_result" do
    assert_difference('OmikujiResult.count') do
      post :create, omikuji_result: { omikuji: @omikuji_result.omikuji, result: @omikuji_result.result }
    end

    assert_redirected_to omikuji_result_path(assigns(:omikuji_result))
  end

  test "should show omikuji_result" do
    get :show, id: @omikuji_result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @omikuji_result
    assert_response :success
  end

  test "should update omikuji_result" do
    patch :update, id: @omikuji_result, omikuji_result: { omikuji: @omikuji_result.omikuji, result: @omikuji_result.result }
    assert_redirected_to omikuji_result_path(assigns(:omikuji_result))
  end

  test "should destroy omikuji_result" do
    assert_difference('OmikujiResult.count', -1) do
      delete :destroy, id: @omikuji_result
    end

    assert_redirected_to omikuji_results_path
  end
end
