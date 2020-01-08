require 'test_helper'

class SearchpageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get searchpage_home_url
    assert_response :success
  end

  test "should get result" do
    get searchpage_result_url
    assert_response :success
  end

end
