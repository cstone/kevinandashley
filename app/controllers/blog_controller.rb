class BlogController < ApplicationController
  def index
    @articles = Article.published.all
  end
end
