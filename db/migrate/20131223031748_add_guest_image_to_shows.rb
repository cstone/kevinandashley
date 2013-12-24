class AddGuestImageToShows < ActiveRecord::Migration
  def change
    add_column :shows, :guest_image, :string
  end
end
