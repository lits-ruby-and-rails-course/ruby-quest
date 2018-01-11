require 'test_helper'

class Teachers::ExamsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teachers_exams_index_url
    assert_response :success
  end

end
