Rails.application.routes.draw do
  root 'rooms#index'  # Or 'tasks#index', depending on your intention
  resources :rooms  # Keep this if you need room-related routes
  resources :tasks  # Add this if you also want to manage tasks

  resources :tasks do
    member do
      patch :complete
    end
  end
  


end
