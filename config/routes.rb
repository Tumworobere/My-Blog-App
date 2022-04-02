Rails.application.routes.draw do
  root to: 'users#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index create new show]
  end

  resources :posts do
    resources :comments, only: %i[create new]
    resources :likes, only: %i[create]
  end
end
