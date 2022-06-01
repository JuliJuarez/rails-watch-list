Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists do
    resources :bookmarks, only: %i[new create] # nested routes
  end
  resources :bookmarks, only: %i[destroy] # No necesito nestear esta ruta
end
