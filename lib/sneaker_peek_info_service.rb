class SneakerPeekInfoService
  def get_twitter_entities_data
    JSON.parse(Http.get("#{backend_sneaker_peek_info_url}/twitter_entities.json").body)['twitter_object_components']
  end

  private

  def backend_sneaker_peek_info_url
    "http://localhost:3000"
  end
end
