require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get doSearch" do
    get :doSearch
    assert_response :success
  end

  test "should get result" do
    get :result
    assert_response :success
  end

end
