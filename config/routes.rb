Rails.application.routes.draw do
  Healthcheck.routes(self)
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  resources :cards, param: :_id
  resources :comments
  resources :users, param: :_id

#  get '/*a', to: 'application#not_found'
  post '/login', to: 'authentication#login'
end
