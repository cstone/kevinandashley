class Video < ActiveRecord::Base
  attr_accessible :active, :description, :source, :title, :tag_list
  acts_as_taggable

  scope :active, where(active: true)

  validates_presence_of :title, :source, :description


  def to_param
    "#{id}-#{title.gsub(/[ ]+/i, '-')}"
  end
end
