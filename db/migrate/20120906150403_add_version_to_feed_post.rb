class AddVersionToFeedPost < ActiveRecord::Migration
  def change
    add_column :feed_posts, :version, :int
  end
end
