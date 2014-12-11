Rails.application.routes.draw do
  root 'landings#show'

  resources :landscapes, only: [:create]
end
