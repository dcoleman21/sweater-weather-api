Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/forecast', to: 'weather#show'
      get '/trails', to: 'trails#index'
      get '/munchies', to: 'munchies#index'
    end
  end
end
