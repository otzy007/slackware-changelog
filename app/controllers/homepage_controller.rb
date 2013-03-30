# The homepage controller
class HomepageController < ApplicationController
  caches_page :about, :index

  # Main Page
  def index
    @posts = Hash[32, FeedPost.ordered(32).first, 64, FeedPost.ordered(64).first]
  end
end
