Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/forecast', to: 'weather#show'
      get '/backgrounds', to: 'image#show'
    end
  end
end
