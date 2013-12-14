class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_upcoming_events

  def get_upcoming_events
    @upcoming_events = Event.upcoming
  end
end
