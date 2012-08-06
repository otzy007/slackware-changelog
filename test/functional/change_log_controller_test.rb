require 'test_helper'

class ChangeLogControllerTest < ActionController::TestCase
  test "should update the database" do
    get :index
    assert_response :success
  end
end
