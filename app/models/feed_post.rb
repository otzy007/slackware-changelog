class FeedPost < ActiveRecord::Base
  attr_accessible :body, :created_at, :title, :version
  after_initialize :ntobr
   # Replace /n with <br />
  def ntobr
      crlf = /(\r\n|\n\r|\r|\n)/
      self.body = self.body.gsub(crlf, "<br />")
  end
  # Return the descending ordered list of posts by version
  def self.ordered(version)
     FeedPost.order("created_at DESC").find_all_by_version(version)
  end
end
