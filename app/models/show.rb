class Show < ActiveRecord::Base
  attr_accessible :date, :description, :guest, :guest_image, :time, :topic, :url, :tag_list
  acts_as_taggable
  mount_uploader :guest_image, ShowGuestImageUploader

  after_destroy :delete_image

  default_scope order(:date, :time)

  validates_presence_of :date, :description, :time, :topic

  #scope :next, where('date >= ?', Date.today).limit(1)
  #scope :next_show, where('date >= ?', Date.today).limit(1)
  scope :next_show, where('date >= ?', Date.today).limit(1)

  def delete_image
    self.guest_image.remove_guest_image!
  end

end
