class TopBlogsController < ApplicationController
logger.debug "CONTROLLER : TopBlogsController "

  DELICIOUS_URL_ENGINE = "http://delicious.com/url"

  # GET /top_blogs
  def index(page = params[:url_lookup])
    logger.debug "TopBlogsController#index - params[:url_lookup] : #{params[:url_lookup]}"
    logger.debug "TopBlogsController#index - page : #{page}"
    return if page == nil
      @extractor = Scrubyt::Extractor.new do
          fetch DELICIOUS_URL_ENGINE
          fill_textfield "url", page 
          submit
          # "//html/body[@id='view']/div[@id='doc3']/div[@id='bd']/div[@id='sidebar']/div[@id='top-tags']/ul/li/a[@class='showTag']/span[@class='m']/"
          tag "//li/a[@class='showTag']/span[@class='m']/"
      end

      # .first(10) extracts 5 key-values couple 
      # Max 5 tags, cause delicious TagLookup limits the query construction to 5 tags

      logger.debug "TopBlogsController#index - @extractor : #{@extractor.results.first(10)}"
      tmp = TopBlog.list(@extractor.results.first(10))
      logger.debug "TopBlogsController#index - tmp.class : #{tmp.class}"
      logger.debug "TopBlogsController#index - tmp : #{tmp}"
      @list = tmp.split("\t")
      logger.debug "TopBlogsController#index - @list.class : #{@list.class}"
      logger.debug "TopBlogsController#index - end - @list : #{@list}"
  end

  def show
  end

end
