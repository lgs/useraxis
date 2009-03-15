class DeliciousUrlLookup < Scrubyt::Extractor 

  DELICIOUS_URL_ENGINE = "http://delicious.com/url"

  def self.find(url_lookup)
    @extractor = new do
          fetch DELICIOUS_URL_ENGINE
          fill_textfield "url", url_lookup
          submit
          tag "//li/a[@class='showTag']/span[@class='m']/"
    end
    puts @extractor.results.inspect
  end
end
