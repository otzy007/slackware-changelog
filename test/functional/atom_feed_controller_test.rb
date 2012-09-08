require 'test_helper'

class AtomFeedControllerTest < ActionController::TestCase
  test "should get index" do
    get :index, :format => "atom"
    assert_response :success
  end

end
