Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
      resources :posts
          # user do
            post :toggle_completed
        patch :update_status
      root to: "posts#index"
          # end
    end
  resources :posts
  root 'posts#index'


end
