class Article < ActiveRecord::Base
  scope :recent, lambda { |num_item| order("created_at DESC").limit(num_item) }

  attr_accessible :title, :body

  validates :title, :presence => true
  validates :body, :presence => true
end
