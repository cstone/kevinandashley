class Article < ActiveRecord::Base
  attr_accessible :article_image, :body, :published_at, :title, :tag_list
  acts_as_taggable

  validates :title, length: { maximum: 60 }

  scope :published, where('published_at < ?', DateTime.now).order('created_at DESC')
  scope :draft, lambda { where(published: false) }
  scope :featured, lambda { where(featured: true)}
  scope :active, where('published_at != NULL')
  scope :recent, published.order(:created_at).limit(5)
  scope :home_featured, published.order(:created_at).limit(3)

  after_create :set_published_time



  def to_param
    "#{id}-#{title.gsub(/[ ]+/i, '-')}"
  end


  def self.search(search)
    if search
      #find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
      where('title LIKE :search OR body LIKE :search', {:search => "%#{search}%"})
    else
      find(:all)
    end
  end

  def set_published_time
    self.published_at = DateTime.now
  end



end
