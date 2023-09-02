Rails.application.routes.draw do

  # Routes welcome
  get '/', to: 'welcome#index', as: :welcome

  # Routes Users
  delete '/users/:id', to: 'users#destroy'
  patch '/users/:id', to: 'users#update'
  post '/users', to: 'users#create'
  get '/users/new', to: 'users#new', as: :new_user
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show', as: :user
  get '/users/:id/edit', to: 'users#edit', as: :edit_user
  
end
