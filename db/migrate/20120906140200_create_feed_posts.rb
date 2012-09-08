class CreateFeedPosts < ActiveRecord::Migration
  def change
    create_table :feed_posts do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
