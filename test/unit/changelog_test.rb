require 'test_helper'

class ChangelogTest < ActiveSupport::TestCase
  test "update the changelog table" do
     a = Changelog.first
     a.update_changelog "test", 32
     assert a.current == "test"
  end
  test "download of the current changelog" do
    assert Changelog.update?(32)
  end
  test "download of the current64 changelog" do
    assert Changelog.update?(64)
  end
  test "it sets a post in the feed" do
     FeedPost.destroy_all
     Changelog.update?(32)
     assert !FeedPost.nil?     
  end
end
