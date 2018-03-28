Rails.application.routes.draw do
  get 'sessions/new'

   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   # root "controller_name#action_name"
  root 'static_pages#home'

  # get 'static_pages/home'
  get "/home", to: "static_pages#home"
  # get 'static_pages/help'
  get "/help", to: "static_pages#help"
  # get 'static_pages/about'
  get "/about", to: "static_pages#about"
  # get 'static_pages/contact'
  get "/contact", to: "static_pages#contact"
  
  get "/signup", to: "users#new"

  post "/signup", to: "users#create"

  get "/login", to: "sessions#new"

  post "/login", to: "sessions#create"

  delete "/logout", to: "sessions#destroy"

  resources :users
end
