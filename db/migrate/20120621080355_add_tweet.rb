class AddTweet < ActiveRecord::Migration
  def up
    Tweet.create!({:current => "lol", :current64 => "lol"}, :without_protection => true)
  end

  def down
    Tweet.find_by_current("lol").destroy
  end
end
