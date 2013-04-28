require 'test_helper'

class CapasControllerTest < ActionController::TestCase
  setup do
    @capa = capas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:capas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create capa" do
    assert_difference('Capa.count') do
      post :create, capa: { content: @capa.content }
    end

    assert_redirected_to capa_path(assigns(:capa))
  end

  test "should show capa" do
    get :show, id: @capa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @capa
    assert_response :success
  end

  test "should update capa" do
    put :update, id: @capa, capa: { content: @capa.content }
    assert_redirected_to capa_path(assigns(:capa))
  end

  test "should destroy capa" do
    assert_difference('Capa.count', -1) do
      delete :destroy, id: @capa
    end

    assert_redirected_to capas_path
  end
end
