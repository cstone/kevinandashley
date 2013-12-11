class Video < ActiveRecord::Base
  attr_accessible :active, :description, :source, :title

  scope :active, where('active == TRUE')


  def to_param
    "#{id}-#{title.gsub(/[ ]+/i, '-')}"
  end
end
