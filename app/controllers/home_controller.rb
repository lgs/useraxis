class HomeController < ApplicationController

  before_filter :login_required
  before_filter :find_account

  #
  # index
  #
  def index

    @feeds = Feed.paginate(:all, 
                           :per_page => 15, 
                           :page => params[:page], 
                           :conditions => ['account_id = ?', @account.id],
                           :order => "published DESC")


    #@account.feed_urls do |feeds|
    #        feeds.paginate(:all, 
    #                       :per_page => 15, 
    #                       :page => params[:page], 
    #                       :order => "published DESC")
    #end

    #@feeds = Feed.paginate(:all, 
    #                       :per_page => 15, 
    #                       :page => params[:page], 
    #                       :order => "published DESC")

    #@feed_id_per_user = FeedUrl.find_all_by_account_id(@account.id)
    #@feeds = @account.feed_urls.collect { |f| f.feed }

    #@feeds = @account.feed_urls.collect do |f|
    #  f.feed.paginate(:all,
    #                  :per_page => 15, 
    #                  :page => params[:page], 
    #                  :order => "published DESC")
    #end

    #  @feeds = Feed.paginate(:all,
    #                         :per_page => 15, 
    #                         :page => params[:page], 
    #                         :conditions => ['feed_url_id = ?', @feed_id_per_user],
    #                         :order => "published DESC")

    #f = Feed.find_all_by_feed_url_id(2)

  end
  
  
  #
  # used to render rss.
  #
  def show
    index
  end
  
  #
  # search
  #
  def search
    query = params[:query]
    query = (query && query.strip) || ""
    @feeds = Feed.paginate(:all, 
                           :conditions => ["content like ? or title like ?", "%"+query+"%", "%"+query+"%"], 
                           :per_page => 15, 
                           :page => params[:page], 
                           :order => "published DESC")
    render :action => "index"
  end
end
