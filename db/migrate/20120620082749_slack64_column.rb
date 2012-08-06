class Slack64Column < ActiveRecord::Migration
  def up
      add_column :changelogs, :current64, :string
  end

  def down
      remove_column :changelogs, :current64
  end
end
