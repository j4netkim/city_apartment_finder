Rails.application.routes.draw do
  
  get '/apartments', :to => 'apartments#index'
  

  resources :owners do
    resources :buildings, only: [:new, :create]
  

  resources :owners, only: [:new, :show, :create]

  
  resources :amenities, only: [:new, :show, :create]
    resources :apartments, only: [:index, :new, :create]
  end

  get '/auth/google_oauth2/callback', :to => 'sessions#omniauth'

  root 'home#index'
end