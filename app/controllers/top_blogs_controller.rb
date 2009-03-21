class TopBlogsController < ApplicationController
  logger.debug "CONTROLLER : TopBlogsController "

  DELICIOUS_URL_ENGINE = "http://delicious.com/url"

  # GET /top_blogs
  def index(page = params[:url_lookup])
    logger.debug "TopBlogsController#index - page : #{page}"

    @extractor = Scrubyt::Extractor.new do
          fetch DELICIOUS_URL_ENGINE
          fill_textfield "url", page 
          submit
          # "//html/body[@id='view']/div[@id='doc3']/div[@id='bd']/div[@id='sidebar']/div[@id='top-tags']/ul/li/a[@class='showTag']/span[@class='m']/"
          tag "//li/a[@class='showTag']/span[@class='m']/"
    end
    # .first(10) extracts 5 key-values couple 
    # Max 5 tags, cause delicious TagLookup limits the query construction to 5 tags

    #@list = TopBlog.list(@extractor.results.first(10).inspect)
    @tmp = TopBlog.list(@extractor.results.first(10))
    logger.debug "TopBlogsController#index - @top_blogs : #{@tmp}"




    #@top_blogs = TopBlog.find(params[:url_lookup])
    #@top_blogs = DeliciousUrlLookup.find(params[:url_lookup])
    #logger.debug "TopBlogsController#show - params[:url_lookup] : #{params[:url_lookup]}"
    #logger.debug "TopBlogsController#show - @top_blogs = TopBlog.find(params[:url_lookup]) : #{@top_blogs.attributes.inspect}"
    #logger.debug "TopBlogsController#show - params[:url_lookup] : #{@top_blogs.attributes.inspect}"
  end

  def show
  end

end
