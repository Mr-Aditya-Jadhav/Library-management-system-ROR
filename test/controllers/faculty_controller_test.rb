require "test_helper"

class FacultyControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get faculty_new_url
    assert_response :success
  end
end
