class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :image_url, :format => { :with => %r{\.(gif|jpg|png)$}i, :message => 'must be url for gif, jpg, png image'}
  validates :title, :length => {:minimum => 10, :message => "must be minimum 10 characters"}
end
