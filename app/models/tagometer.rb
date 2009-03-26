class Tagometer < ActiveDelicious 
  RAILS_DEFAULT_LOGGER.debug "MODEL : Tagometer "

  self.format = :json
  self.site = "http://feeds.delicious.com/v2/json/urlinfo"

end
