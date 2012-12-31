require 'test_helper'

class EstadosEncomendasControllerTest < ActionController::TestCase
  setup do
    @estados_encomenda = estados_encomendas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estados_encomendas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estados_encomenda" do
    assert_difference('EstadosEncomenda.count') do
      post :create, estados_encomenda: { estado: @estados_encomenda.estado }
    end

    assert_redirected_to estados_encomenda_path(assigns(:estados_encomenda))
  end

  test "should show estados_encomenda" do
    get :show, id: @estados_encomenda
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estados_encomenda
    assert_response :success
  end

  test "should update estados_encomenda" do
    put :update, id: @estados_encomenda, estados_encomenda: { estado: @estados_encomenda.estado }
    assert_redirected_to estados_encomenda_path(assigns(:estados_encomenda))
  end

  test "should destroy estados_encomenda" do
    assert_difference('EstadosEncomenda.count', -1) do
      delete :destroy, id: @estados_encomenda
    end

    assert_redirected_to estados_encomendas_path
  end
end
