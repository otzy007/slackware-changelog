class ChangeStringToText < ActiveRecord::Migration
  def up
    change_column :tweets, :current, :text, :limit => 600
    change_column :tweets, :current64, :text, :limit => 600
  end

  def down
    change_column :tweets, :current64, :string
    change_column :tweets, :current, :string
  end
end
