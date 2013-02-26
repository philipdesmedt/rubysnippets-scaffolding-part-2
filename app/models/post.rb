class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title

  has_many :comments
  
  validates :content, :presence => true, :length => { :minimum => 20 }
  validates :title, :presence => true
  validates :name, :presence => true
end
