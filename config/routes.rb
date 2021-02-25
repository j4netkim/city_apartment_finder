Rails.application.routes.draw do
  

  get '/owners/all', :to => 'owners#all', :as => :all
  post 'owners/:id/buildings/new', :to => 'buildings#create'

  resources :owners do 
    resources :buildings
  end 
  root 'home#index'
end