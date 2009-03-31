class TagexplorersController < ApplicationController
  logger.debug "TagexplorersController#index"

  def index
    @addtags = flash[:notice]
    @tagexplorer = Tagexplorer.find(:all)#, :from => "#{@addtags}")
    logger.debug "TagexplorersController#index - @addtags = #{@addtags}"
    logger.debug "TagexplorerController#index - @Tagexplorer.class = #{@Tagexplorer.class}"
    logger.debug "TagexplorerController#index - @Tagexplorer = #{@Tagexplorer}"
  end

end
