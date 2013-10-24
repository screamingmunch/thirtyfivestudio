RedDevise1::Application.routes.draw do

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"},
                   controllers: {omniauth_callbacks: "omniauth_callbacks"}

  post '/events/inquiry' => 'events#inquiry'

  get '/events/thankyou' => 'events#thankyou'
  get '/about' => 'home#about'
  
  resources :gears, :users, :events, :galleries

  



  match 'auth/:provider/callback', to: 'sessions#create'
	# match 'auth/failure', to: redirect('/')
	match 'signout', to: 'sessions#destroy', as: 'signout'

  root :to => 'home#index'
  
end
