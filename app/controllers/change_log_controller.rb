# Controller to check for new updates in the changelog
class ChangeLogController < ApplicationController
  # Check for new updates
  def index
    # Store the repositories URL
    slack_repos = {32 => " goo.gl/1hBKB", 64 => " goo.gl/6eDY1"}
    # Check if there are any new updates an tweet them
    slack_repos.each_key do | version |
      if Changelog.update? version
	update = eval("Changelog.first.current#{version == 32 ? '' : '64'} + \"#{slack_repos[version]}\"")
	Tweet.update! update, version
	@changelog = 'Updated'
      end
    end
    @changelog = 'No new changes in the changelog file' if @changelog != 'Updated'
  end
end
