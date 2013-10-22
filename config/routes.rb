RedDevise1::Application.routes.draw do

  devise_for :users

  resources :gears

  get '/about' => 'home#about'

  root :to => 'home#index'
end
