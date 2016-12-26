require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  test "should get categories" do
    get :categories
    assert_response :success
  end

  test "should get fliter" do
    get :fliter
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
