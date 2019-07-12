Rails.application.routes.draw do
  root 'static_pages#t0p'
  get '/signup', to: 'users#new'
  
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  get '/guest-admin/login', to: 'sessions#create_a'
  get '/guest/login', to: 'sessions#create_b'
  
  resources :users do
    resources :tasks
  end
end
