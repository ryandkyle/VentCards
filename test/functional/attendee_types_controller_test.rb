require 'test_helper'

class AttendeeTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attendee_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attendee_type" do
    assert_difference('AttendeeType.count') do
      post :create, :attendee_type => { }
    end

    assert_redirected_to attendee_type_path(assigns(:attendee_type))
  end

  test "should show attendee_type" do
    get :show, :id => attendee_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => attendee_types(:one).to_param
    assert_response :success
  end

  test "should update attendee_type" do
    put :update, :id => attendee_types(:one).to_param, :attendee_type => { }
    assert_redirected_to attendee_type_path(assigns(:attendee_type))
  end

  test "should destroy attendee_type" do
    assert_difference('AttendeeType.count', -1) do
      delete :destroy, :id => attendee_types(:one).to_param
    end

    assert_redirected_to attendee_types_path
  end
end
