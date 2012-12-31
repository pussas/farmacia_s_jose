require 'test_helper'

class EstadosPagamentosControllerTest < ActionController::TestCase
  setup do
    @estados_pagamento = estados_pagamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estados_pagamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estados_pagamento" do
    assert_difference('EstadosPagamento.count') do
      post :create, estados_pagamento: { estado: @estados_pagamento.estado }
    end

    assert_redirected_to estados_pagamento_path(assigns(:estados_pagamento))
  end

  test "should show estados_pagamento" do
    get :show, id: @estados_pagamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estados_pagamento
    assert_response :success
  end

  test "should update estados_pagamento" do
    put :update, id: @estados_pagamento, estados_pagamento: { estado: @estados_pagamento.estado }
    assert_redirected_to estados_pagamento_path(assigns(:estados_pagamento))
  end

  test "should destroy estados_pagamento" do
    assert_difference('EstadosPagamento.count', -1) do
      delete :destroy, id: @estados_pagamento
    end

    assert_redirected_to estados_pagamentos_path
  end
end
