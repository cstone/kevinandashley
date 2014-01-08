class Event < ActiveRecord::Base
  attr_accessible :description, :event_image, :start, :title, :venue, :address, :city, :state, :zip, :url, :tag_list
  acts_as_taggable

  validates :title, length: { maximum: 60 }

  scope :upcoming, where('start >= ?', Time.now).order(:start).limit(3)

  def event_title_start
    "#{title} - #{start}"
  end

  def to_param
    "#{id}-#{title.gsub(/[ ]+/i, '-')}"
  end
end
