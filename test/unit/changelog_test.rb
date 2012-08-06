require 'test_helper'

class ChangelogTest < ActiveSupport::TestCase
  test "download of the current changelog" do
    assert Changelog.update?(32)
  end
  test "download of the current64 changelog" do
    assert Changelog.update?(64)
  end
end
