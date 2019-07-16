Rails.application.routes.draw do
  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
  post    '/login', to: 'sessions#new'
  get   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  get '/guest-admin/login', to: 'sessions#create_a'
  get '/guest/login', to: 'sessions#create_b'
  
  resources :users do
    resources :tasks
  end
end
