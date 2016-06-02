Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'
  get 'pages/show'

  resources :articles do
    resources :comments
  end
end
