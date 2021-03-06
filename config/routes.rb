Rails.application.routes.draw do

  root 'home#index'

  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/dashboard', to: 'dashboard#index'
  get '/profile', to: 'home#profile'
  get '/profile_auth', to: 'dashboard#profile'

  resources :notes

  resources :tags, only: [:index]

end
