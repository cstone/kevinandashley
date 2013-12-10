class Article < ActiveRecord::Base
  attr_accessible :article_image, :body, :published_at, :title
end
