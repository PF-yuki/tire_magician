require 'test_helper'

class ManufacturesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get manufactures_show_url
    assert_response :success
  end

end
