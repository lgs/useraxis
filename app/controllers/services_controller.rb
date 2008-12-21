class ServicesController < ApplicationController

  before_filter :login_required
  before_filter :find_account
  before_filter :find_usernames, :only => [:index]

  def list
    @services = Service.find(:all)
  end

  # GET /services
  # GET /services.xml
  def index
    @services = @account.usernames.collect { |s| s.service }
  end

  # GET /services/1
  # GET /services/1.xml
  def show
    @service = Service.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @service }
    end
  end

  # GET /services/new
  # GET /services/new.xml
  def new
    @service = Service.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @service }
    end
  end

  # GET /services/1/edit
  def edit
    
    #find_username

    ##### running 
    @service = Service.find(params[:id])
    if @username = @service.usernames.find_by_account_id(@account.id) 
    else
       @username = @service.usernames.new 
    end

    #@username = @service.usernames.new
    ##@username = @service.usernames.find_by_service_id(@service.id)
    ###@username = @service.usernames.find(params[:id])
    
    #   dal controller usernames : 
    #   @username = Username.find(params[:id])
    ##########################################

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @username }
    end
  end

  # POST /services
  # POST /services.xml
  def create
    @service = Service.new(params[:service])

    respond_to do |format|
      if @service.save
        flash[:notice] = 'Service was successfully created.'
        format.html { redirect_to(@service) }
        format.xml  { render :xml => @service, :status => :created, :location => @service }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @service.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /services/1
  # PUT /services/1.xml
  def update
    @service = Service.find(params[:id])

    respond_to do |format|
      if @service.update_attributes(params[:service])
        flash[:notice] = 'Service was successfully updated.'
        format.html { redirect_to(@service) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @service.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.xml
  def destroy
    @service = Service.find(params[:id])
    @service.destroy

    respond_to do |format|
      format.html { redirect_to(services_url) }
      format.xml  { head :ok }
    end
  end

  private

  def find_usernames
    #@usernames = @service.usernames.find_all_by_account_id(@account.id) 
    @usernames = @account.usernames.find_all_by_account_id(@account.id)
  end

end








