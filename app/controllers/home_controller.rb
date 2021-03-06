class HomeController < ApplicationController

  #before_filter :login_required
  #before_filter :find_account

  #
  # index
  #
  def index
    @account = Account.find(:first, :conditions => ['login = ? AND enabled = ?', params[:account], true])
    raise ActiveRecord::RecordNotFound if @account.nil?

    @feeds = Feed.paginate(:all, 
                           :per_page => 15, 
                           :page => params[:page], 
                           :conditions => ['account_id = ?', @account.id],
                           :order => "published DESC")
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
