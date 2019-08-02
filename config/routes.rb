Rails.application.routes.draw do
  resources :users
  resources :replies
  resources :sections, only: [:index, :show]
  resources :posts
  resources :login

  delete "login", to: "login#destroy", as: "logout"
  root 'login#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
