class Tagexplorer < ActiveDelicious 
  RAILS_DEFAULT_LOGGER.debug "MODEL : Tagexplorer "

  self.format = :json
  self.site = "http://feeds.delicious.com/v2/json/tag/"

  ## To search by categories and tags
  def self.search_by_tags(options)
    RAILS_DEFAULT_LOGGER.debug "MODEL : Tagexplorer - self.search_by_tags(options) = #{options}"
    self.find(:all, :from=>"/v2/json/tag/#{options}")
  end
  RAILS_DEFAULT_LOGGER.debug "MODEL : Tagexplorer - self.site = #{self.site}"
  RAILS_DEFAULT_LOGGER.debug "MODEL : Tagexplorer - self.prefix = #{self.prefix}"

end
