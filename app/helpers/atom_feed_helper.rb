module AtomFeedHelper
   def feed_post_url(post)
      "/atom_feed/#{post.id}"
   end
end
