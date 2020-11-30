Rails.application.routes.draw do
  get 'trips/index'
  root to: "trips#index"
end
