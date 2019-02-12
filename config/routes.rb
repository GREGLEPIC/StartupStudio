Rails.application.routes.draw do
  resources :startups
  resources :users
  devise_for :users
  root 'startups#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
