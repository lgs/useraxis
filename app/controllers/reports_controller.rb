class ReportsController < ApplicationController

   def population
     @opml_metadata = OpmlMetadata.find(params[:id])
     @OPML = @opml_metadata.db_file.data
     @population_data_link = formatted_population_reports_url(:xml)
     #@population_data_link = formatted_opml_metadata_url(:xml)
     respond_to do |format|
       format.html
       format.xml  { render :action => "population.xml.builder", :layout => false }
     end
   end

#  def population
#    @cities = City.find(:all)
#    @population_data_link = formatted_population_reports_url(:xml)
#    respond_to do |format|
#      format.html
#      format.xml  { render :action => "population.xml.builder", :layout => false }
#    end
#  end

#  def show
#    @opml_metadata = OpmlMetadata.find(params[:id])
#    @OPML = @opml_metadata.db_file.data

#    respond_to do |format|
#      format.html # show.html.erb
      #format.opml  { render :opml => @OPML }
#      format.xml  { render :xml => @OPML }
#    end
#  end

end
