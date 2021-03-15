Rails.application.routes.draw do
  
  get '/apartments', :to => 'apartments#index'
  get '/log_in', :to => 'sessions#new'
  post '/log_in', :to => 'sessions#create'
  get '/log_out', :to => 'sessions#destroy'
  delete '/log_out', :to => 'sessions#destroy'


  


  

  resources :owners


  resources :buildings do
    resources :apartments, shallow: true
  end

  resources :amenities


  get '/auth/google_oauth2/callback', :to => 'sessions#omniauth'

  root 'home#index'
end