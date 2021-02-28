Rails.application.routes.draw do
  
  get '/apartments', :to => 'apartments#index'
  get '/log_in', :to => 'sessions#new'
  post '/log_in', :to => 'sessions#create'

  


  

  resources :owners, only: [:new, :show, :create]

  
  resources :apartments do
    resources :buildings, only: [:index, :new, :create]
  end

  resources :amenities, only: [:index, :show, :new, :create]

  get '/auth/google_oauth2/callback', :to => 'sessions#omniauth'

  root 'home#index'
end