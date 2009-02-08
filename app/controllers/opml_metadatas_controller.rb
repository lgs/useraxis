class OpmlMetadatasController < ApplicationController

  before_filter :login_required, :except => [:show]
  before_filter :find_account

  # GET /opml_metadatas
  # GET /opml_metadatas.xml
  def index
    #@opml_metadatas = OpmlMetadata.find(:all)
    #@opml_metadatas = @account.opml_metadatas.collect { |m| m.metadata }

    @opml_metadatas = OpmlMetadata.find_all_by_account_id(@account.id)


    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @opml_metadatas }
    end
  end

  # GET /opml_metadatas/1
  # GET /opml_metadatas/1.xml
  def show
    @opml_metadata = OpmlMetadata.find(params[:id])
    @OPML = @opml_metadata.db_file.data

    # display a list of sources, parsing OPML
    #doc  = Hpricot.XML(@OPML)
   #(doc/"outline[@htmlurl]").each do |item| 
   #    @url = item.attributes['htmlurl'] 
   # end

    respond_to do |format|
      format.html # show.html.erb
      #format.opml  { render :opml => @OPML }
      format.xml  { render :xml => @OPML }
    end
  end

  # GET /opml_metadatas/new
  # GET /opml_metadatas/new.xml
  def new
    @opml_metadata = OpmlMetadata.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @opml_metadata }
    end
  end

  # GET /opml_metadatas/1/edit
  def edit
    @opml_metadata = OpmlMetadata.find(params[:id])
  end

  # POST /opml_metadatas
  # POST /opml_metadatas.xml
  def create
    @opml_metadata = OpmlMetadata.new(params[:opml_metadata])

    respond_to do |format|
      if @opml_metadata.save
        flash[:notice] = 'OpmlMetadata was successfully created.'
        format.html { redirect_to(@opml_metadata) }
        format.xml  { render :xml => @opml_metadata, :status => :created, :location => @opml_metadata }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @opml_metadata.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /opml_metadatas/1
  # PUT /opml_metadatas/1.xml
  def update
    @opml_metadata = OpmlMetadata.find(params[:id])

    respond_to do |format|
      if @opml_metadata.update_attributes(params[:opml_metadata])
        flash[:notice] = 'OpmlMetadata was successfully updated.'
        format.html { redirect_to(@opml_metadata) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @opml_metadata.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /opml_metadatas/1
  # DELETE /opml_metadatas/1.xml
  def destroy
    @opml_metadata = OpmlMetadata.find(params[:id])
    @opml_metadata.destroy

    respond_to do |format|
      format.html { redirect_to(opml_metadatas_url) }
      format.xml  { head :ok }
    end
  end
end
