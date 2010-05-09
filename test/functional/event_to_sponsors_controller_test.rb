require 'test_helper'

class EventToSponsorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_to_sponsors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_to_sponsor" do
    assert_difference('EventToSponsor.count') do
      post :create, :event_to_sponsor => { }
    end

    assert_redirected_to event_to_sponsor_path(assigns(:event_to_sponsor))
  end

  test "should show event_to_sponsor" do
    get :show, :id => event_to_sponsors(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => event_to_sponsors(:one).to_param
    assert_response :success
  end

  test "should update event_to_sponsor" do
    put :update, :id => event_to_sponsors(:one).to_param, :event_to_sponsor => { }
    assert_redirected_to event_to_sponsor_path(assigns(:event_to_sponsor))
  end

  test "should destroy event_to_sponsor" do
    assert_difference('EventToSponsor.count', -1) do
      delete :destroy, :id => event_to_sponsors(:one).to_param
    end

    assert_redirected_to event_to_sponsors_path
  end
end
