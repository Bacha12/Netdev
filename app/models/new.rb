class New < ActiveRecord::Base
  attr_accessible :title, :content
  
  cattr_reader :per_page
  @@per_page = 3
  
  validates :title, :presence => true
  validates :content, :presence => true
  
  default_scope :order => 'news.created_at DESC'
end
