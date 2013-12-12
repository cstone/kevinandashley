class Show < ActiveRecord::Base
  attr_accessible :date, :description, :guest, :guest_image, :time, :topic, :url
end
