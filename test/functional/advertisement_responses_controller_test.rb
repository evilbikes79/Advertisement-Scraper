require 'test_helper'

class AdvertisementResponsesControllerTest < ActionController::TestCase
  setup do
    @advertisement_response = advertisement_responses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advertisement_responses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advertisement_response" do
    assert_difference('AdvertisementResponse.count') do
      post :create, :advertisement_response => @advertisement_response.attributes
    end

    assert_redirected_to advertisement_response_path(assigns(:advertisement_response))
  end

  test "should show advertisement_response" do
    get :show, :id => @advertisement_response
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @advertisement_response
    assert_response :success
  end

  test "should update advertisement_response" do
    put :update, :id => @advertisement_response, :advertisement_response => @advertisement_response.attributes
    assert_redirected_to advertisement_response_path(assigns(:advertisement_response))
  end

  test "should destroy advertisement_response" do
    assert_difference('AdvertisementResponse.count', -1) do
      delete :destroy, :id => @advertisement_response
    end

    assert_redirected_to advertisement_responses_path
  end
end
