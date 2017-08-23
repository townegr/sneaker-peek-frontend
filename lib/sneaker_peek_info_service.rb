class SneakerPeekInfoService
  def get_twitter_entities_data#(current_user)
    JSON.parse(Http.get("#{backend_sneaker_peek_info_url}/twitter_entities.json?user_name=gtowney").body)['all_followings'].with_indifferent_access
  end

  def get_twitter_entity_data(uid)
    JSON.parse(Http.get("#{backend_sneaker_peek_info_url}/twitter_entities/#{uid}.json?user_name=gtowney&service=frontend").body)['tweets'].with_indifferent_access
  end

  private

  def backend_sneaker_peek_info_url
    "http://localhost:3000"
  end
end
