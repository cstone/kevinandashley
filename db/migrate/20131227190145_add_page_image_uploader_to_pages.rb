class AddPageImageUploaderToPages < ActiveRecord::Migration
  def change
    add_column :pages, :page_image, :string
  end
end
