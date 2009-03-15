class TopBlogsController < ApplicationController
  DELICIOUS_URL_ENGINE = "http://delicious.com/url"
  def index(page = params[:url_lookup])
  logger.debug "TopBlogsController#index - page : #{page}"

    @extractor = Scrubyt::Extractor.new do
          fetch DELICIOUS_URL_ENGINE
          fill_textfield "url", page
          submit
          tag "//li/a[@class='showTag']/span[@class='m']/"
    end
    puts @extractor.results.inspect
    logger.debug "TopBlogsController#index - @extractor : #{@extractor.results.inspect}"

    #@top_blogs = TopBlog.find(params[:url_lookup])
    #@top_blogs = DeliciousUrlLookup.find(params[:url_lookup])
    #logger.debug "TopBlogsController#show - params[:url_lookup] : #{params[:url_lookup]}"
    #logger.debug "TopBlogsController#show - @top_blogs = TopBlog.find(params[:url_lookup]) : #{@top_blogs.attributes.inspect}"
    #logger.debug "TopBlogsController#show - params[:url_lookup] : #{@top_blogs.attributes.inspect}"
  end

  def show
  end

end
