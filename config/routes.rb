Rails.application.routes.draw do

  devise_for :users
  root controller: :index, action: :index
  resources :photos, only: [:index, :show, :create, :new]
  resources :albums, only: [:index, :show, :new, :create]
end
