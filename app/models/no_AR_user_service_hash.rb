class UserServiceHash < ActiveRecord::Base
  belongs_to :account
  has_many :release_policies, :dependent => :destroy

  validates_presence_of :service, :account


end
