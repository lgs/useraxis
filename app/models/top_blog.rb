require 'open-uri'
require 'hpricot'

class TopBlog #< Scrubyt::Extractor 
  RAILS_DEFAULT_LOGGER.debug "MODEL : TopBlog "

  DELICIOUS_URL_ENGINE = "http://delicious.com/url"
  DELICIOUS_TAG_ENGINE = "http://delicious.com/tag"
  RAILS_DEFAULT_LOGGER.debug "TopBlog.DELICIOUS_URL_ENGINE - DELICIOUS_URL_ENGINE : #{DELICIOUS_URL_ENGINE}"
  RAILS_DEFAULT_LOGGER.debug "TopBlog.DELICIOUS_TAG_ENGINE - DELICIOUS_URL_ENGINE : #{DELICIOUS_TAG_ENGINE}"

  def self.list(addtag)
    self.tags(addtag)
    #RAILS_DEFAULT_LOGGER.debug "MODEL : TopBlog.list(addtag) == addtag : #{addtag}"
    doc = Hpricot(open("http://delicious.com/tag/#{@tags}"))
      (doc/"//ul[@id='bookmarklist']/li/div/div/h4/a").each do |href|
         @list = puts href.attributes['href']
         #puts href.inner_html
         RAILS_DEFAULT_LOGGER.debug "MODEL : TopBlog.list - inner doc/ loop : #{@list}"
       end
    RAILS_DEFAULT_LOGGER.debug "MODEL : TopBlog.list(addtag) == @list : #{@list}"
  end

  protected
  def self.tags(addtag)
    RAILS_DEFAULT_LOGGER.debug "MODEL protected : TopBlog.tags(addtag) == addtag : #{addtag}"
    @tags = "#{addtag[0][:tag]}+#{addtag[2][:tag]}+#{addtag[4][:tag]}+#{addtag[6][:tag]}+#{addtag[8][:tag]}"
    RAILS_DEFAULT_LOGGER.debug "MODEL protected : TopBlog - @tags : #{@tags}"
  end
end

########################################################################################################################
  ### Actually extracted and swapped on the controller ( Yes, bad thing ), just to work
#  def initialize(page = params[:url_lookup])
#    RAILS_DEFAULT_LOGGER.debug "TopBlog.page : #{page}"
#    @extractor = Scrubyt::Extractor.new do
#          fetch DELICIOUS_URL_ENGINE
#          fill_textfield "url", page
#          submit
#          # "//html/body[@id='view']/div[@id='doc3']/div[@id='bd']/div[@id='sidebar']/div[@id='top-tags']/ul/li/a[@class='showTag']/span[@class='m']/"
#          tag "//li/a[@class='showTag']/span[@class='m']/"
#    end
#  end

  #def self.url_lookup(page)
  #RAILS_DEFAULT_LOGGER.debug "TopBlog#url_lookup - page : #{page}"

    #@extractor = superclass.new do #Scrubyt::Extractor.new do
    #      fetch DELICIOUS_URL_ENGINE
    #      fill_textfield "url", page
    #      submit
    #      # "//html/body[@id='view']/div[@id='doc3']/div[@id='bd']/div[@id='sidebar']/div[@id='top-tags']/ul/li/a[@class='showTag']/span[@class='m']/"
    #      tag "//li/a[@class='showTag']/span[@class='m']/"
    #end
  #end

# Ex controller#index

#  def index(page = params[:url_lookup])
#  logger.debug "TopBlogsController#index - page : #{page}"
#
#    @extractor = Scrubyt::Extractor.new do
#          fetch DELICIOUS_URL_ENGINE
#          fill_textfield "url", page
#          submit
#          # "//html/body[@id='view']/div[@id='doc3']/div[@id='bd']/div[@id='sidebar']/div[@id='top-tags']/ul/li/a[@class='showTag']/span[@class='m']/"
#          tag "//li/a[@class='showTag']/span[@class='m']/"
#    end
#
