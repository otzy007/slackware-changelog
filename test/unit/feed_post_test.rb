require 'test_helper'

class FeedPostTest < ActiveSupport::TestCase
  test "it should create and get the first post in the Atom Feed" do
     FeedPost.destroy_all
     a = FeedPost.new title:"te2st", body:"test"
     a.save
     puts FeedPost.first.title
     assert(FeedPost.first == a)
  end
  test 'it replaces the \\n with <br /> from text' do 
      assert FeedPost.new(:body => "lol\nhaha").body == "lol<br />haha"
   end
end
