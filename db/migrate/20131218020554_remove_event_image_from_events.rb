class RemoveEventImageFromEvents < ActiveRecord::Migration
  def up
    remove_column :events, :event_image, :string
  end

  def down
    add_column :events, :event_image, :string
  end
end
