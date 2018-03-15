Rails.application.routes.draw do
  get 'questions/show'

  get 'matches/show'

  devise_for :users
  root to: 'pages#dashboard'

  get "/dashboard", to: "pages#dashboard", as: :dashboard
  resources "profiles"
  resources :matches, only: [:show]
  resources :questions, only: [:index]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
