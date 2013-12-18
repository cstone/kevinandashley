class RemoveGuestImageFromShows < ActiveRecord::Migration
  def up
    remove_column :shows, :guest_image, :string
  end

  def down
    add_column :shows, :guest_image, :string
  end
end
