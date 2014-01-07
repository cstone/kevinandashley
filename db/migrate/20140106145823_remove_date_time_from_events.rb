class RemoveDateTimeFromEvents < ActiveRecord::Migration
  def up
    remove_column :events, :date
    remove_column :events, :time

    add_column :events, :start, :datetime
  end

  def down
    add_column :events, :date, :date
    add_column :events, :time, :time

    remove_column :events, :start
  end
end
