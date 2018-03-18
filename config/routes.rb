Rails.application.routes.draw do
  get 'questions/show'
  get 'matches/show'

  root to: 'pages#home'

  devise_for :users

  root to: 'pages#dashboard'


  get "/dashboard", to: "pages#dashboard", as: :dashboard
  resources :profiles, only: [:show, :new, :create]
  resources :matches, only: [:show, :new]
  resources :messages, only:[:create]
  resources :questions, only: [:index]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
