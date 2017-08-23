class TwitterEntitiesController < ApplicationController
  def index
    @twitter_entities = SneakerPeekInfoService.new.get_twitter_entities_data
  end

  def show
    @twitter_entity = SneakerPeekInfoService.new.get_twitter_entity_data(params[:id])
  end
end
