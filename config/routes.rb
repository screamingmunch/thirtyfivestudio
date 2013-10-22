RedDevise1::Application.routes.draw do

  devise_for :users

  resources :gears, :users

  get '/about' => 'home#about'

  root :to => 'home#index'
end
