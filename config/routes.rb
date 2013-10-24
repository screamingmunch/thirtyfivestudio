RedDevise1::Application.routes.draw do

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"},
                   controllers: {omniauth_callbacks: "omniauth_callbacks"}

  resources :gears, :users, :events, :galleries

  get '/about' => 'home#about'

  match 'auth/:provider/callback', to: 'sessions#create'
	# match 'auth/failure', to: redirect('/')
	match 'signout', to: 'sessions#destroy', as: 'signout'

  root :to => 'home#index'
  
end
