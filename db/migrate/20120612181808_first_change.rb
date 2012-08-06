class FirstChange < ActiveRecord::Migration
  def up
    Changelog.create!({:current => "first"}, :without_protection => true)
  end

  def down
    Changelog.find_by_current("first").destroy
  end
end
