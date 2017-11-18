Rails.application.routes.draw do
  # devise_for :users
  root 'home#index'

  # get 'home/get_detail'
  get 'api/get_detail'
  get 'api/get_auth_detail'

  # get "/sign_up" => "devise/registrations#new"

  devise_for :users, :controllers => { registrations: 'registrations' } do
  	get "/signin", :to => "devise/sessions#new" # Add a custom sign in route for user sign in
   	# get "/logout", :to => "devise/sessions#destroy" # Add a custom sing out route for user sign out
   	get "/sign_up", :to => "devise/registrations#new"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
