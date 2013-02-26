class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title

  validates :content, :presence => true, :length => { :minimum => 20 }
  validates :title, :presence => true
  validates :name, :presence => true
end
