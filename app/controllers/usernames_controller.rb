class UsernamesController < ApplicationController
  before_filter :login_required
  before_filter :find_account

  # GET /usernames
  # GET /usernames.xml
  def index

    redirect_to  services_path

    #@usernames = Username.find(:all)
    ##@usernames = @account.usernames.collect { |s| s.service }

    ##respond_to do |format|
    ##  format.html # index.html.erb
    ##  format.xml  { render :xml => @usernames }
    ##end
  end

  # GET /usernames/1
  # GET /usernames/1.xml
  def show
    @username = Username.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @username }
    end
  end

  # GET /usernames/new
  # GET /usernames/new.xml
  def new
    @username = Username.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @username }
    end
  end

  # GET /usernames/1/edit
  def edit
    @username = Username.find(params[:id])
  end

  # POST /usernames
  # POST /usernames.xml
  def create
    @username = Username.new(params[:username])

    respond_to do |format|
      if @username.save
        flash[:notice] = 'Username was successfully created.'
        format.html { redirect_to(@username) }
        format.xml  { render :xml => @username, :status => :created, :location => @username }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @username.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /usernames/1
  # PUT /usernames/1.xml
  def update
    @username = Username.find(params[:id])

    respond_to do |format|
      if @username.update_attributes(params[:username])
        flash[:notice] = 'Username was successfully updated.'
        format.html { redirect_to(@username) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @username.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /usernames/1
  # DELETE /usernames/1.xml
  def destroy
    @username = Username.find(params[:id])
    @username.destroy

    respond_to do |format|
      format.html { redirect_to(usernames_url) }
      format.xml  { head :ok }
    end
  end
end
