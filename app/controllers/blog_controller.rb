class BlogController < ApplicationController
  def index
    @articles = Article.published.page(params[:page]).per(10)
  end
end
