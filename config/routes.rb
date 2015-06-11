Rails.application.routes.draw do

  get 'users/new'

  get 'sessions/new'

  # /
  root 'pages#home'

  # /contact
  get '/contact' => 'pages#contact'

  # /about
  get '/about' => 'pages#about'

  # /meals
  #get '/meals'=> 'meals#index'
  resources :meals

  resources :movies

  resources :musics

  #this is the routes for the session that is made for a user
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  #this is the routes that are for the users
  get '/signup' =>  'users#new'
  post '/signup' => 'users#create'

end
