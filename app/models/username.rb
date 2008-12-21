class Username < ActiveRecord::Base
  belongs_to :account
  belongs_to :service

  validates_presence_of :account
  validates_presence_of :service
  validates_uniqueness_of :login_name, :scope => :service_id

end
