require 'test_helper'

class AtomFeedHelperTest < ActionView::TestCase
   test 'it returns the url for a post' do
      post = FeedPost.new(title:"lol", body:"lol")
      post.save
      assert feed_post_url(post) == "/atom_feed/#{post.id}"
   end
end
