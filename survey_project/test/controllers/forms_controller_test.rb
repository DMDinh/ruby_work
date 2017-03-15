require 'test_helper'

class FormsControllerTest < ActionDispatch::IntegrationTest
  test "should get result" do
    get forms_result_url
    assert_response :success
  end

end
