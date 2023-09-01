Rails.application.routes.draw do
  
  post '/users', to: 'users#create'
  get '/users/new', to: 'users#new', as: :new_user
  get '/users', to: 'users#index'

end
