class BlogController < ApplicationController

  def index
    #@articles = Article.where(:user_id => current_user.id).order('created_at DESC')
    if params[:tag]
      @articles = Article.published.tagged_with(params[:tag]).page(params[:page]).per(10)
    else
      @articles = Article.published.page(params[:page]).per(10)
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @articles }
    end
  end
end
