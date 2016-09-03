Rails.application.routes.draw do
  root 'questions#index'
  get 'pages/show'

  devise_for :users
  
  resources :questions do
    resources :comments
  end
end
