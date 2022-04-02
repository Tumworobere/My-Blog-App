Rails.application.routes.draw do
  root to: 'users#index'
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index create new show]
  end
  resources :posts do
    resources :comments, only: [:create]
    resources :likes, only: [:create]
  end
end
