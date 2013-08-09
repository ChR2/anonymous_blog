class Post < ActiveRecord::Base
  has_many :post_tags
  has_many :tags, through: :post_tags
  validates :body, :presence => true   # makes sure you have the right parts before processing
  validates :title, :presence => true
end
