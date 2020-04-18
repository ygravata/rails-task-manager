Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Create (get, post)
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # Read all
  get 'tasks', to: 'tasks#index'
  # Read one
  get 'tasks/:id', to: 'tasks#show', as: :task
  # Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id/', to: 'tasks#update', as: :update
end
