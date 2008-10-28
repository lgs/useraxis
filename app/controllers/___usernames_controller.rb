class ServicesController < ApplicationController

  before_filter :login_required
  before_filter :find_account
  before_filter :find_service, :only => [:edit, :update, :destroy]

  # GET /services
  # GET /services.xml
  def index

    @usernames = Username.find(:all)
 
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml =>  @usernames }
    end
  end

  # GET /services/1
  # GET /services/1.xml
  def show
    @username = Username.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @username }
    end
  end

  # GET /services/new
  # GET /services/new.xml
  def new
    @username = Username.new <---------------------------------------

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @service }
    end
  end

  # GET /services/1/edit
  def edit
      @service = Service.find(params[:id])
      @username = Username.new

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

  def find_service
    @service = @account.service.find(params[:id])
  end

end
