require 'test_helper'

class SuperadminControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get superadmin_index_url
    assert_response :success
  end

end
