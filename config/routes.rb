Rails.application.routes.draw do
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users

  resources :items
  # get    '/items', to: 'items#index'
  # get    '/items/:id', to: 'items#show'
  # get    '/items/new', to: 'items#new
  # get    '/items/:id/edit', to: 'items#edit
  # post   '/items', to: 'items#create
  # patch  '/items/:id', to: 'items#update'
  # delete '/items/:id', to: 'items#destroy'

  get 'print', to: 'work_process#print'
  get '/drylaminate', to: 'work_process#drylaminate'
  get '/exlaminate', to: 'work_process#exlaminate'
  get '/slit', to: 'work_process#slit'
  get '/bagmake', to: 'work_process#bagmake'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
