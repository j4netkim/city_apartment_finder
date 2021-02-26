Rails.application.routes.draw do
  
  get '/apartments', :to => 'apartments#index'
  

  get '/owners/all', :to => 'owners#all', :as => :all
  post 'owners/:id/buildings/new', :to => 'buildings#create'

  resources :owners, only: [:new, :show, :create]

  
  get '/auth/google_oauth2/callback', :to => 'sessions#omniauth'


  root 'home#index'
end