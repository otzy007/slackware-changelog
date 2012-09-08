atom_feed do |feed|
   feed.title "Slackware#{@version == 32 ? '' : '64'} ChangeLog"
   feed.updated(@posts.first.updated_at) if @posts.count > 0
   
   @posts.each do |post|
      feed.entry(post) do |entry|
	 entry.title post.title
	 entry.content post.body, :type => 'html'
	 entry.author {|author| author.name("http://slackware-changelog.heroku.com")}
      end
   end
   
end