class TopBlog < Scrubyt::Extractor 

  DELICIOUS_URL_ENGINE = "http://delicious.com/url"
  RAILS_DEFAULT_LOGGER.debug "TopBlog.DELICIOUS_URL_ENGINE - DELICIOUS_URL_ENGINE : #{DELICIOUS_URL_ENGINE}"

  def self.find(url_lookup)

    @extractor = new do
          fetch DELICIOUS_URL_ENGINE
          fill_textfield "url", url_lookup
          submit
          tag "//li/a[@class='showTag']/span[@class='m']/"
          #logger.debug "TopBlog - @extractor : #{@extractor}"
          #logger.debug "TopBlog.find - url_lookup : #{url_lookup}"
    end
    puts @extractor.results.inspect
    #logger.debug "TopBlog - @extractor.results.inspect : #{@extractor.results.inspect}"
  end
end
