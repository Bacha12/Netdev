class Comment < ActiveRecord::Base
  attr_accessible :name, :email, :content
  
  belongs_to :article
  
  validates :name, :presence => true,
                   :length => { :within => 5..10 }
  validates :content, :presence => true
end
