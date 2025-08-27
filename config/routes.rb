Rails.application.routes.draw do
  root to: 'static_pages#home'
  devise_for :users
  resources :themes, only: [] do
    resources :posts, only: [ :index, :create, :edit, :update, :destroy ]
  end
end
