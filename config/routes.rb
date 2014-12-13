Rails.application.routes.draw do
  root 'landings#index'

  resources :landscapes, only: [:new, :create, :edit, :update, :destroy]
end
