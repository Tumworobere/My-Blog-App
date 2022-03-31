Rails.application.routes.draw do
 
  resources :users, only: [:show, :index] do
   resources :posts, only: [:show, :index]
  end

  root 'users#index'
end
