Rails.application.routes.draw do
  get '/home', to:'static_pages#home'
  get '/help',to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/signup', to: 'users#new'

  resources :custom_travels
  resources :users

  root 'static_pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
end
