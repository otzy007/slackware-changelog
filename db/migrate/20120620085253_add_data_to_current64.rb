class AddDataToCurrent64 < ActiveRecord::Migration
  def change
    Changelog.first.update_attributes({:current64 => "first"}, :without_protection => true)
  end
end
