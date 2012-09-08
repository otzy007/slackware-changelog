# Controller to handle the Atom Feed
class AtomFeedController < ApplicationController
  caches_page :show, :index
  def index
     @version = params[:arch] || 32
     @posts = FeedPost.ordered @version
     @version = @version.to_i
     respond_to :atom
  end
  def show
     id = params[:id]
     @post = FeedPost.find_by_id id
  end
end
