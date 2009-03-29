#require 'json/add/rails'
class TagometersController < ApplicationController

  # GET /tagometers
  # GET /tagometers.xml
  def index
    begin
    logger.debug "TagometersController#index - Tagometer.find(:all, :params => { :url => \"#{params[:page]}\" })"
    @tagometers = Tagometer.find(:all, :params => { :url => "#{params[:page]}" }).to_json
    logger.debug "TagometersController#index - @tagometers.class = #{@tagometers.class}"
    logger.debug "TagometersController#index - @tagometers = #{@tagometers}"

    tags = ActiveSupport::JSON.decode("#{@tagometers}")
    logger.debug "TagometersController#index - tags = #{tags}"
    tagstring = tags[0].stringify_keys!["top_tags"].keys.first(5)
    logger.debug "TagometersController#index - tagstring = #{tagstring}"
    @addtags = ''
    tagstring.each do |t|
      @addtags << t + "+"
    end   
    @addtags = "/" + @addtags
    logger.debug "TagometersController#index - @addtags = #{@addtags}"

    Tagexplorer.addtags = @addtags
    @list = Tagexplorer.find(:all, :from => "#{@addtags}")
    logger.debug "TagometersController#index - @list.class = #{@list.class}"
    logger.debug "TagometersController#index - @list = #{@list}"

    respond_to do |format|
      format.html # index.html.erb
      #format.xml  { render :xml => @tagometers }
      #format.json  { render :json => @tagometers }
    end
    rescue NoMethodError
      puts "Some variable is nil ( params[:page], tags )"
    end
  end

#  # GET /tagometers/1
#  # GET /tagometers/1.xml
#  def show
#    @tagometer = Tagometer.find(params[:id])
#
#    respond_to do |format|
#      format.html # show.html.erb
#      format.xml  { render :xml => @tagometer }
#    end
#  end
#
#  # GET /tagometers/new
#  # GET /tagometers/new.xml
#  def new
#    @tagometer = Tagometer.new
#
#    respond_to do |format|
#      format.html # new.html.erb
#      format.xml  { render :xml => @tagometer }
#    end
#  end
#
#  # GET /tagometers/1/edit
#  def edit
#    @tagometer = Tagometer.find(params[:id])
#  end
#
#  # POST /tagometers
#  # POST /tagometers.xml
#  def create
#    @tagometer = Tagometer.new(params[:tagometer])
#
#    respond_to do |format|
#      if @tagometer.save
#        flash[:notice] = 'Tagometer was successfully created.'
#        format.html { redirect_to(@tagometer) }
#        format.xml  { render :xml => @tagometer, :status => :created, :location => @tagometer }
#      else
#        format.html { render :action => "new" }
#        format.xml  { render :xml => @tagometer.errors, :status => :unprocessable_entity }
#      end
#    end
#  end
#
#  # PUT /tagometers/1
#  # PUT /tagometers/1.xml
#  def update
#    @tagometer = Tagometer.find(params[:id])
#
#    respond_to do |format|
#      if @tagometer.update_attributes(params[:tagometer])
#        flash[:notice] = 'Tagometer was successfully updated.'
#        format.html { redirect_to(@tagometer) }
#        format.xml  { head :ok }
#      else
#        format.html { render :action => "edit" }
#        format.xml  { render :xml => @tagometer.errors, :status => :unprocessable_entity }
#      end
#    end
#  end
#
#  # DELETE /tagometers/1
#  # DELETE /tagometers/1.xml
#  def destroy
#    @tagometer = Tagometer.find(params[:id])
#    @tagometer.destroy
#
#    respond_to do |format|
#      format.html { redirect_to(tagometers_url) }
#      format.xml  { head :ok }
#    end
#  end
end
