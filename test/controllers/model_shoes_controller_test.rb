require 'test_helper'

class ModelShoesControllerTest < ActionController::TestCase
  setup do
    @model_shoe = model_shoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:model_shoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create model_shoe" do
    assert_difference('ModelShoe.count') do
      post :create, model_shoe: { shoe_id: @model_shoe.shoe_id }
    end

    assert_redirected_to model_shoe_path(assigns(:model_shoe))
  end

  test "should show model_shoe" do
    get :show, id: @model_shoe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @model_shoe
    assert_response :success
  end

  test "should update model_shoe" do
    patch :update, id: @model_shoe, model_shoe: { shoe_id: @model_shoe.shoe_id }
    assert_redirected_to model_shoe_path(assigns(:model_shoe))
  end

  test "should destroy model_shoe" do
    assert_difference('ModelShoe.count', -1) do
      delete :destroy, id: @model_shoe
    end

    assert_redirected_to model_shoes_path
  end
end
