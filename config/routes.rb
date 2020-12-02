Rails.application.routes.draw do
  root to: "trips#index"
  resources :trips, only: [:index, :new, :create]
end
