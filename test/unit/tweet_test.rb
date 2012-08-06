require 'test_helper'

class TweetTest < ActiveSupport::TestCase
  test "can tweet" do
    assert Tweet.update!(rand(36**44).to_s(36), 32)
  end
  
  test "can tweet64" do
     assert Tweet.update!(rand(36**44).to_s(36), 64)
  end
end
