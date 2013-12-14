class Event < ActiveRecord::Base
  attr_accessible :date, :description, :event_image, :time, :title, :venue, :address, :city, :state, :zip, :url


  scope :upcoming, where('date >= ?', Date.today).order(:date).limit(5)
end
