Rails.application.routes.draw do
  resources :pages
  resources :sponsors
  resources :photos
  resources :albums
  resources :events
  get 'site/home'
  get 'site/calendar'
  resources :sections
  get 'pages/home'
  devise_scope :user do
    # Redirects signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  devise_for :users  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "site#home"
end
