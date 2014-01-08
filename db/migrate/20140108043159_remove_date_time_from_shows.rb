class RemoveDateTimeFromShows < ActiveRecord::Migration
  def up
    remove_column :shows, :date
    remove_column :shows, :time

    add_column :shows, :start, :datetime
  end

  def down
    add_column :shows, :date, :date
    add_column :shows, :time, :time

    remove_column :shows, :start
  end
end
