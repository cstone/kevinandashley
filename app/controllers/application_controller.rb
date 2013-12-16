class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_upcoming_events
  before_filter :get_next_shows

  def get_upcoming_events
    @upcoming_events = Event.upcoming
  end

  def get_next_shows
    @next_shows = Show.next_show
  end
end
