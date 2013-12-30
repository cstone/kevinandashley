class Page < ActiveRecord::Base
  attr_accessible :active, :body, :permalink, :title, :page_image
  mount_uploader :page_image, PageImageUploader

  def to_param
    permalink
  end
end
