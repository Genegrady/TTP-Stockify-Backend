Rails.application.routes.draw do
  resources :transactions
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get   '/auth' => 'auth#persist'
  post  '/login' => 'auth#login'

  post '/users/:user_id/transactions' => 'transactions#create'
  get '/users/:user_id/transactions' => 'transactions#index'
  get '/users/:user_id/transactions/:id' => 'transactions#show'
  get    '/users'          => 'users#index'
  post   '/signup'         => 'users#create'
  patch  '/user/:id'       => 'users#update'
  delete '/user/:id'       => 'users#destroy'

end
