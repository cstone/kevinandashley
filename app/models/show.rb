class Show < ActiveRecord::Base
  attr_accessible :description, :guest, :guest_image, :topic, :url, :start, :tag_list, :remove_image
  acts_as_taggable
  mount_uploader :guest_image, ShowGuestImageUploader

  after_destroy :delete_image

  default_scope order('start DESC')

  validates_presence_of :description, :topic

  scope :upcoming, where('start >= ?', Date.today)
  scope :next_show, where('start >= ?', Date.today).limit(1)
  scope :one_next_show, order('start DESC').limit(1)

  def delete_image
    self.guest_image.remove_guest_image!
  end

  def show_topic_start
    "#{topic} - #{start}"
  end

end
