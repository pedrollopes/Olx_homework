Rails.application.routes.draw do
  devise_for :members
  get 'home/index'

  root 'home#index'


  resources :profile, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
