# The homepage controller
class HomepageController < ApplicationController
  caches_page :about

  # Main Page
  def index
    # Check if there are new updates available
    ChangeLogController.new.index
  end
end
