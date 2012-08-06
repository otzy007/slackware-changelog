class CreateChangelog < ActiveRecord::Migration
  def up
    create_table :changelogs do |t|
      t.string :current
    end
  end

  def down
    drop_table :changelogs
  end
end
