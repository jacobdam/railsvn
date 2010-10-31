class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :article_id
      t.integer :author_id
      t.text :body

      t.timestamps
    end

    add_index :comments, :article_id
  end

  def self.down
    drop_table :comments
  end
end
