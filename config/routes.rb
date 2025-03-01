Rails.application.routes.draw do
  resources :memberships, only: [:index, :create]
  resources :clients, only: [:show, :index, :update]
  resources :gyms, only: [:show, :destroy, :index, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
