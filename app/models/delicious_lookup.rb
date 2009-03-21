class DeliciousLookup < Scrubyt::Extractor 

  attr_accessor = :page, :tags

  DELICIOUS_URL_ENGINE = "http://delicious.com/url"
  DELICIOUS_TAG_ENGINE = "http://delicious.com/tag"

  def self.url_lookup
    @extractor = new do
          fetch DELICIOUS_URL_ENGINE
          fill_textfield "url", page
          submit
          tag "//li/a[@class='showTag']/span[@class='m']/"
    end
  end

  def self.tag_lookup
    @extractor = new do
          fetch DELICIOUS_TAG_ENGINE
          fill_textfield "addtag", tags
          submit
          # /html/body[@id='index']/div[@id='doc3']/div[@id='bd']/div[@id='yui-main']/div[@id='content']/
          # /div[@id='recent-index']/ul[@id='bookmarklist']/li[@id='item-13b3a95231ccee51209e6f9ecabf4984-0']/div
          tag "//ul[@id='bookmarklist']/li/" do
             url "//div/div[@class='data']/"
          end
    end
  end
end
