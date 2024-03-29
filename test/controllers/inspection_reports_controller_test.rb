require "test_helper"

class InspectionReportsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

   test "shows a users inspection reports" do
     user = users(:one)
     sign_in user
     get inspection_reports_path
     assert_response :success
   end
end
