require 'test_helper'

# Override the update! method to not actually tweet
# This method will be tested in test/unit/tweet_test.rb
class Tweet
  class << self   
    def update!(tweet, version)
      true
    end
  end
end
class ChangeLogControllerTest < ActionController::TestCase
  test "should update the database" do
    get :index
    assert_response :success
  end
end
