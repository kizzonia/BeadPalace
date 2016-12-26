require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  test "should get checkout" do
    get :checkout
    assert_response :success
  end

  test "should get confirmation" do
    get :confirmation
    assert_response :success
  end

  test "should get payment" do
    get :payment
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get status" do
    get :status
    assert_response :success
  end

end
