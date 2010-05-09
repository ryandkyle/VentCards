require 'test_helper'

class CardTemplatesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:card_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create card_template" do
    assert_difference('CardTemplate.count') do
      post :create, :card_template => { }
    end

    assert_redirected_to card_template_path(assigns(:card_template))
  end

  test "should show card_template" do
    get :show, :id => card_templates(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => card_templates(:one).to_param
    assert_response :success
  end

  test "should update card_template" do
    put :update, :id => card_templates(:one).to_param, :card_template => { }
    assert_redirected_to card_template_path(assigns(:card_template))
  end

  test "should destroy card_template" do
    assert_difference('CardTemplate.count', -1) do
      delete :destroy, :id => card_templates(:one).to_param
    end

    assert_redirected_to card_templates_path
  end
end
