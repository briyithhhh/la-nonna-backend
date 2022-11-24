Rails.application.routes.draw do
  Healthcheck.routes(self)
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  resources :cards, except: %i[count_card], param: :_id
  resources :comments
  resources :users, param: :_id
  resources :carts, only: %i[index update delete]
  resources :platillos, except: %i[delete]
  resources :facturas, except: %i[delete]

#  get '/*a', to: 'application#not_found'

  get '/cards?q=count_cards', to: 'cards#count_cards'

  post '/login', to: 'authentication#login'
end
