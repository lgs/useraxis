class OpmlMetadata < ActiveRecord::Base

  belongs_to :account
  has_many :db_files

  has_attachment :size => 100..2.megabytes,
		 :content_type => ['text/opml', 'application/xml', 'text/xml', 'text/x-opml', 'text/plain']

  #validates_as_attachment

end

