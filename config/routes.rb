Rails.application.routes.draw do
  resources :themes, only: [] do
    resources :posts, only: [ :index, :create ]
  end
end
