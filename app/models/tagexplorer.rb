class Tagexplorer < ActiveDelicious 
  attr_writer :addtags
  RAILS_DEFAULT_LOGGER.debug "MODEL : Tagexplorer "
  RAILS_DEFAULT_LOGGER.debug "MODEL : Tagexplorer - attr_writer :addtags = #{@addtags}"

  self.format = :json
  self.site = "http://feeds.delicious.com/v2/json/tag/#{@addtags}"

end
