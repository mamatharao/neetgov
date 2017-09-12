require 'test_helper'

class EcetControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ecet_index_url
    assert_response :success
  end

end
