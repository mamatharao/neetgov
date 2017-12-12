require 'test_helper'

class EcetexamControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ecetexam_index_url
    assert_response :success
  end

end
