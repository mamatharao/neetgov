require 'test_helper'

class EamcetControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get eamcet_index_url
    assert_response :success
  end

end
