class RemoveArticleImageFromArticles < ActiveRecord::Migration
  def up
    remove_column :articles, :article_image, :string
  end

  def down
    add_column :articles, :article_image, :string
  end
end
