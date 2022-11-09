Rails.application.routes.draw do
  resources :chatrooms
  get 'cards/index'
  get 'cards/update'
  get 'cards/destroy'
  resources :comments
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :users, param: :_id
  get '/chat', to: 'chatrooms#index'
  get '/*a', to: 'application#not_found'
  post '/login', to: 'authentication#login'

  # namespace :api do
  #   namespace :v1 do
      # resources :users, param: :_username
      # post '/login', to: 'authentication#login'
  #   end
  # end
end
