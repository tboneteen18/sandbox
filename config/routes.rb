Rails.application.routes.draw do

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
end
