class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :topic
      t.date :date
      t.time :time
      t.text :description
      t.string :url
      t.string :guest
      t.string :guest_image

      t.timestamps
    end
  end
end
