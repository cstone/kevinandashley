class Event < ActiveRecord::Base
  attr_accessible :description, :event_image, :start, :title, :venue, :address, :city, :state, :zip, :url, :tag_list
  acts_as_taggable


  scope :upcoming, where('start >= ?', Time.now).order(:date).limit(5)
end
