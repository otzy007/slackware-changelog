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

class HomepageControllerTest < ActionController::TestCase
  test "should get index" do
    Tweet.first.update_attributes({:current => "lol", :current64 => "haha"}, :without_protection => true)
    FeedPost.create! :title => "lol", :body => "haha", :version => 32
    FeedPost.create! :title => "loll", :body => "haha", :version => 64
    get :index
    assert_response :success
  end

end
