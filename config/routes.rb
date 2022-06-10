Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :gnomes do
    resources :reservations, only: %i[new create destroy edit update]
  end
  get "/profil", to: "pages#profil"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
