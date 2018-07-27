Rails.application.routes.draw do
  # get 'pets', to: 'pets#index'
  # post 'pets', to: 'pets#create'
  # get 'pets/new', to: 'pets#new', as: 'new_pet'
  # get 'pets/:id', to: 'pets#show', as: 'pet'
  root to: 'pets#index'
  resources :pets, only: [:index, :show, :new, :create]
end
