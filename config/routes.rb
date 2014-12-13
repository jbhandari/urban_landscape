Rails.application.routes.draw do
  root 'landings#show'

  resources :landscapes, only: [:new, :create]
end
