Rails.application.routes.draw do
  # root to: 'posts#index'
  devise_for :users
  resources :themes, only: [] do
    resources :posts, only: [ :index, :create ]
  end
end
