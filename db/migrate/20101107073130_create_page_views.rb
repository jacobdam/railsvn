class CreatePageViews < ActiveRecord::Migration
  def self.up
    create_table :page_views do |t|
      t.string :request_uri
      t.string :ip
      t.string :user_agent
      t.string :referrer
      t.integer :signed_in_user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :page_views
  end
end
