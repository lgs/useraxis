class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services,  :force => true do |t|
      t.string :servicename, :url, :null => false
    end
    add_index :services, :servicename, :unique => true

    Service.create([
      { :servicename => 'delicious', :url => 'http://delicious.com/' },
      { :servicename => 'lastfm', :url => 'http://www.lastfm.it/user/' },
      { :servicename => 'linkedin', :url => 'http://www.linkedin.com/in/' },
      { :servicename => 'flickr', :url => 'http://flickr.com/' },
      { :servicename => 'friendfeed', :url => 'http://friendfeed.com/' },
      { :servicename => 'librarything', :url => 'http://www.librarything.com/' },
      { :servicename => 'twitter', :url => 'http://twitter.com/' }
    ]) 
  end

  def self.down
    drop_table :services
  end
end

