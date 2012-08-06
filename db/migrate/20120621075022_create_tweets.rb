class CreateTweets < ActiveRecord::Migration
  def up
    create_table :tweets do |t|
      t.string :current
      t.string :current64
    end
  end

  def down
    drop_table :tweets
  end
end
