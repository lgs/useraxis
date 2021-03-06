class PlanetFeedAggregator < ActiveRecord::Migration
  def self.up
    create_table :feeds, :force => true do |t|
      t.integer :account_id, :feed_url_id, :null => false
      t.string :title, :author, :link, :site_link, :site_title
      t.text :content
      t.datetime :published
      t.timestamps
    end

    create_table :feed_urls, :force => true do |t|
      t.integer :account_id, :null => false 
      t.string :feed_url, :title, :star
      t.timestamps
    end
  end

  def self.down
    drop_table :feeds
    drop_table :feed_urls
  end
end

