require 'test_helper'

class ArmazensControllerTest < ActionController::TestCase
  setup do
    @armazem = armazens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:armazens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create armazem" do
    assert_difference('Armazem.count') do
      post :create, armazem: { designacao: @armazem.designacao, telefone: @armazem.telefone }
    end

    assert_redirected_to armazem_path(assigns(:armazem))
  end

  test "should show armazem" do
    get :show, id: @armazem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @armazem
    assert_response :success
  end

  test "should update armazem" do
    put :update, id: @armazem, armazem: { designacao: @armazem.designacao, telefone: @armazem.telefone }
    assert_redirected_to armazem_path(assigns(:armazem))
  end

  test "should destroy armazem" do
    assert_difference('Armazem.count', -1) do
      delete :destroy, id: @armazem
    end

    assert_redirected_to armazens_path
  end
end
