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
    doc = Hpricot(open("http://delicious.com/tag/#{@tags}"))
    RAILS_DEFAULT_LOGGER.debug "MODEL : TopBlog.list  - Hpricot - @tags : #{@tags}"
    @tmp = "\t"
    RAILS_DEFAULT_LOGGER.debug "MODEL : TopBlog.list - @tmp = \"\" : #{@tmp.class}"
    (doc/"//ul[@id='bookmarklist']/li/div/div/h4/a").each do |href|
       @tmp << href.attributes['href'] + "\t"
    end
    RAILS_DEFAULT_LOGGER.debug "MODEL : TopBlog.list - end - @tmp << href.attributes['href'] + \"\t\" : #{@tmp.class}"
    RAILS_DEFAULT_LOGGER.debug "MODEL : TopBlog.list - doc/ loop ended - @tmp : #{@tmp}"
    #@output = @tmp.split("\t")
    #RAILS_DEFAULT_LOGGER.debug "MODEL : TopBlog.list - end - @output.class : #{@output.class}"
    #RAILS_DEFAULT_LOGGER.debug "MODEL : TopBlog.list - end - @output = @tmp.split(\"\t\") : #{@output}"
    #@output
    @tmp
  end

  protected
  def self.tags(addtag)
    RAILS_DEFAULT_LOGGER.debug "MODEL protected : TopBlog - self.tags(addtag) == addtag : #{addtag}"
    begin
    @tags = "#{addtag[0][:tag]}+#{addtag[2][:tag]}+#{addtag[4][:tag]}+#{addtag[6][:tag]}+#{addtag[8][:tag]}"
    rescue RuntimeError
      puts "Hei, no tags found on delicious for the URL you typed. If you are sure of what you are typing in, may be is not tagged on delicious jet. Doit yourself and try later :-) "
    rescue NoMethodError
      puts "Hei, no tags found on delicious for the URL you typed. If you are sure of what you are typing in, may be is not tagged on delicious jet. Doit yourself and try later :-) "
    end
    RAILS_DEFAULT_LOGGER.debug "MODEL protected : TopBlog - self.tags - @tags : #{@tags}"
  end
end

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
