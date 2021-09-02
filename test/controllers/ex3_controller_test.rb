require "test_helper"

class Ex3ControllerTest < ActionDispatch::IntegrationTest
  test "should get createpost" do
    get ex3_createpost_url
    assert_response :success
  end

  test "should get userread" do
    get ex3_userread_url
    assert_response :success
  end
end
