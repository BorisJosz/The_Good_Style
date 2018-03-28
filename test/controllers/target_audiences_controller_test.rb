require 'test_helper'

class TargetAudiencesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get target_audiences_index_url
    assert_response :success
  end

end
