class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_upcoming_events
  before_filter :get_next_shows, :next_show
  before_filter :get_home_articles
  before_filter :events, :home, :contact_us, :shows, :videos, :articles, :footer_line, :sitename


  def get_upcoming_events
    @upcoming_events = Event.upcoming
  end

  def get_next_shows
    @next_shows = Show.next_show
  end

  def next_show
    @next_shows = Show.one_next_show
  end

  def get_home_articles
    @home_articles = Article.home_featured
  end

  def sitename
    @sitename_content = DynamicContent.get_value(:sitename)
  end


  def home
    @home_content = DynamicContent.get_value(:home)
  end

  def contact_us
    @contact_us_content = DynamicContent.get_value(:contact_us)
  end

  def events
    @events_content = DynamicContent.get_value(:events)
  end

  def shows
    @shows_content = DynamicContent.get_value(:shows)
  end

  def videos
    @videos_content = DynamicContent.get_value(:videos)
  end

  def articles
    @articles_content = DynamicContent.get_value(:articles)
  end

  def footer_line
    @footer_line_content = DynamicContent.get_value(:footer_line)
  end



  private
  def restrict_access msg
    sign_out current_user
    flash[:error] = msg
    flash[:info]="<h5><a href='/contactus'>Click here to contact our support team.</a></h5>"
    root_path
  end




end
