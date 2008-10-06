class OpmlMetadata < ActiveRecord::Base
  has_many :db_files
  has_attachment :size => 100..2.megabytes,
		 :content_type => ['application/xml', 'text/xml', 'text/x-opml', 'text/plain']

  validates_as_attachment

end

