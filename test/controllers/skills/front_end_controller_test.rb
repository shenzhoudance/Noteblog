require 'test_helper'

class Skills::FrontEndControllerTest < ActionDispatch::IntegrationTest
  test "should get work_1" do
    get skills_front_end_work_1_url
    assert_response :success
  end

end
