Rails.application.routes.draw do
 resources :posts, only: [:index, :new, :create]
  devise_for :users, path: '', path_names:{sign_in: 'login', sign_up:'register'}
  root 'posts#index'
end
