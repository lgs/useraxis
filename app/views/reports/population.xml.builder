
  xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8"
  xml.chart do
    # xml.message "You can broadcast any message to chart from data XML file", :bg_color => "#FFFFFF", :text_color => "#000000"
    xml.series do    
      #@OPML.each_with_title do |
      @cities.each_with_index do |city, index|
        xml.value city.name, :xid => index
      end
    end

    xml.graphs do
     #the gid is used in the settings file to set different settings just for this graph
      xml.graph :gid => 'population' do
        @cities.each_with_index do |city, index|
          population = city.population
          case population
            # When the population is > 1 million, show the bar in red/pink
            when > 100000
              xml.value value, :xid => index, :color => "#ff43a8", :gradient_fill_colors => "#960040,#ff43a8", :description => level
            else
              xml.value value, :xid => index, :color => "#00C3C6", :gradient_fill_colors => "#009c9d,#00C3C6", :description => level
            end
        end
      end
    end

  end
