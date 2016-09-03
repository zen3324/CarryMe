Rails.application.routes.draw do
  root 'articles#index'
  get 'pages/show'

  devise_for :users
  
  resources :articles do
    resources :comments
  end
end
