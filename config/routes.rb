Rails.application.routes.draw do
 resources :posts, only: [:index, :new, :create]
  devise_for :users
  root 'home#index'
end
