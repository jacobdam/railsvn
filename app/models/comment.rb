class Comment < ActiveRecord::Base
  belongs_to :article
  belongs_to :author, :class_name => 'User'

  validates :body, :presence => true
  validates :article, :presence => true
  validates :author, :presence => true
end
