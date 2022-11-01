Rails.application.routes.draw do
  get '/*a', to: 'application#not_found'
  namespace :api do
    namespace :v1 do
      resources :users, param: :_username
      post '/auth/login', to: 'authentication#login'
    end
  end
end
