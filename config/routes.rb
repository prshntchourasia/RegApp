Rails.application.routes.draw do
  # devise_for :users
  root 'home#index'

  # get 'home/get_detail'
  get 'api/get_detail'
  get 'api/get_auth_detail'

  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
