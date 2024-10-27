# config/routes.rb
Rails.application.routes.draw do
  root 'categories#index'  # Ensure the root path is set to categories#index

  resources :categories do
    resources :tasks, only: [:create, :destroy] do
      member do
        patch :complete
      end
    end
  end
end
