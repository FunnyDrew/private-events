require "test_helper"

class EventSubscribingsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get event_subscribings_create_url
    assert_response :success
  end

  test "should get delete" do
    get event_subscribings_delete_url
    assert_response :success
  end
end
