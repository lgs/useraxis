class Str2md5sController < ApplicationController

  # GET /convert
  # GET /convert.xml
  def convert
    @url_md5 = MD5.new(params[:convert])
    @delicious_rss_md5 = "http://del.icio.us/rss/url/#{@url_md5}"

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @url_md5 }
    end
  end

  # GET /str2md5s
  # GET /str2md5s.xml
  def index
    @str2md5s = Str2md5.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @str2md5s }
    end
  end

  # GET /str2md5s/1
  # GET /str2md5s/1.xml
  def show
    @str2md5 = Str2md5.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @str2md5 }
    end
  end

  # GET /str2md5s/new
  # GET /str2md5s/new.xml
  def new
    @str2md5 = Str2md5.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @str2md5 }
    end
  end

  # GET /str2md5s/1/edit
  def edit
    @str2md5 = Str2md5.find(params[:id])
  end

  # POST /str2md5s
  # POST /str2md5s.xml
  def create
    @str2md5 = Str2md5.new(params[:str2md5])

    respond_to do |format|
      if @str2md5.save
        flash[:notice] = 'Str2md5 was successfully created.'
        format.html { redirect_to(@str2md5) }
        format.xml  { render :xml => @str2md5, :status => :created, :location => @str2md5 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @str2md5.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /str2md5s/1
  # PUT /str2md5s/1.xml
  def update
    @str2md5 = Str2md5.find(params[:id])

    respond_to do |format|
      if @str2md5.update_attributes(params[:str2md5])
        flash[:notice] = 'Str2md5 was successfully updated.'
        format.html { redirect_to(@str2md5) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @str2md5.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /str2md5s/1
  # DELETE /str2md5s/1.xml
  def destroy
    @str2md5 = Str2md5.find(params[:id])
    @str2md5.destroy

    respond_to do |format|
      format.html { redirect_to(str2md5s_url) }
      format.xml  { head :ok }
    end
  end
end
