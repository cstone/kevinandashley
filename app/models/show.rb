class Show < ActiveRecord::Base
  attr_accessible :date, :description, :guest, :guest_image, :time, :topic, :url, :tag_list
  acts_as_taggable

  default_scope order(:date, :time)

  validates_presence_of :date, :description, :time, :topic

  #scope :next, where('date >= ?', Date.today).limit(1)
  #scope :next_show, where('date >= ?', Date.today).limit(1)
  scope :next_show, where('date >= ?', Date.today).limit(1)

end
