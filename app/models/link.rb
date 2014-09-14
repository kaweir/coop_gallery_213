class Link < ActiveRecord::Base
  # before_save { self.url = full_url }
  validates :title, presence: true, length: { maximum: 50 }
  validates :description, presence: true
  validates :url, presence: true
  validates_url_format_of :url,
                          :allow_nil => true
end
