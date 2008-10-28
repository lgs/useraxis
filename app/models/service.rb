class Service < ActiveRecord::Base

  has_many :accounts, :through => :usernames  
  has_many :usernames

  validates_presence_of :servicename
  validates_presence_of :url
 
end
