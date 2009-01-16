class Service < ActiveRecord::Base

  has_many :accounts, :through => :usernames  
  has_many :usernames

  validates_presence_of :servicename
  validates_presence_of :url

([
      { :servicename => 'delicious', :url => 'http://delicious.com/' },
      { :servicename => 'lastfm', :url => 'http://www.lastfm.it/user/' },
      { :servicename => 'linkedin', :url => 'http://www.linkedin.com/in/' },
      { :servicename => 'flickr', :url => 'http://flickr.com/' },
      { :servicename => 'friendfeed', :url => 'http://friendfeed.com/' },
      { :servicename => 'librarything', :url => 'http://www.librarything.com/' },
      { :servicename => 'twitter', :url => 'http://twitter.com/' }
    ])
 
end
