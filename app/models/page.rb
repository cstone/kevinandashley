class Page < ActiveRecord::Base
  attr_accessible :active, :body, :permalink, :title

  def to_param
    permalink
  end
end
