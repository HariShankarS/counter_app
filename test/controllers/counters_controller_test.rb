require "test_helper"

class CountersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get counters_show_url
    assert_response :success
  end

  test "should get increment" do
    get counters_increment_url
    assert_response :success
  end
end
