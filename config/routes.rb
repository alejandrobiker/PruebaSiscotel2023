Rails.application.routes.draw do
  
  patch '/users/:id', to: 'users#update'
  post '/users', to: 'users#create'
  get '/users/new', to: 'users#new', as: :new_user
  get '/users', to: 'users#index'
  get '/users/:id/edit', to: 'users#edit', as: :edit_user
  
end
