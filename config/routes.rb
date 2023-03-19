Rails.application.routes.draw do
  namespace :admin do
      resources :posts
          # user do
            post :toggle_completed
        patch :update_status
      root to: "posts#index"
          # end
    end
  resources :posts
  root 'public#index'


  # Defines the root path route ("/")
  # root "articles#index"
end
