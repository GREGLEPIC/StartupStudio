Rails.application.routes.draw do
  devise_for :users
  get 'startups/index'
  get 'startups/show'
  get 'users/index'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  get 'users/show'

  root 'startups#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
