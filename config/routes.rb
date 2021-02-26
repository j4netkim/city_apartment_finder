Rails.application.routes.draw do
  
  get '/apartments', :to => 'apartments#index'


  resources :users
  get '/owners/all', :to => 'owners#all', :as => :all
  post 'owners/:id/buildings/new', :to => 'buildings#create'

  get '/auth/google_oauth2/callback', :to => 'sessions#omniauth'

  resources :owners do 
    resources :buildings
  end 
  root 'home#index'
end