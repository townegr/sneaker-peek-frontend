class TwitterEntitiesController < ApplicationController
  def index
    @twitter_entities = SneakerPeekInfoService.new.get_twitter_entities_data
  end
end
