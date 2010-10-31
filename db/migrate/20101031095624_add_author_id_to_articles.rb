class AddAuthorIdToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :author_id, :integer
    Article.update_all :author_id => User.first.id if User.first.present?
  end

  def self.down
    remove_column :articles, :author_id
  end
end
