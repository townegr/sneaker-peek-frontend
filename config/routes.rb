Rails.application.routes.draw do
  resources :twitter_entities

  root to: "twitter_entities#index"
end
