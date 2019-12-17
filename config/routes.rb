Rails.application.routes.draw do
  root to: 'pages#home'
  resources :cocktails do
    resources :doses, only: [:create]
  end
  resources :doses, only: [:destroy]
end
