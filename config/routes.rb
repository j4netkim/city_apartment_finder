Rails.application.routes.draw do
  
  get '/apartments', :to => 'apartments#index'
  get '/log_in', :to => 'sessions#new'
  post '/log_in', :to => 'sessions#create'
  get '/signup'  => 'owners#new'
  post '/signup' => 'owners#create'
  get '/log_out', :to => 'sessions#destroy'


  


  

  resources :owners
  

  resources :buildings do
    resources :apartments, shallow: true do
      resources :amenity_apartments, only: [:new, :create, :destroy]
    end
  end

  resources :amenities


  get '/auth/google_oauth2/callback', :to => 'sessions#omniauth'
  get '/auth/failure', to: redirect('/')
  
  root 'home#index'
end