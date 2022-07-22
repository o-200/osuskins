Rails.application.routes.draw do
  resources :skins

  devise_for :users
  get 'index/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'index#index'
end