class Article < ActiveRecord::Base
  attr_accessible :content, :title
  
  cattr_reader :per_page
  @@per_page = 6

  has_many :comments

  validates :title, :presence => true,
                    :length => { :minimum => 4}
  validates :content, :presence => true
  
  default_scope :order => 'articles.created_at DESC'
end
