require 'test_helper'

class TweetTest < ActiveSupport::TestCase
  test "is the config/twitter.yml file available" do
    assert File.exist?(File.expand_path('../../../config/twitter.yml', __FILE__)), 
	"No config/twitter.yml file available.\n Please edit config/twitter.yml.example and save it as config/twitter.yml"
  end
  
  test "can tweet" do
    assert Tweet.update!(rand(36**44).to_s(36), 32)
  end
  
  test "can tweet64" do
     assert Tweet.update!(rand(36**44).to_s(36), 64)
  end
end
