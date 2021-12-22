Rails.application.routes.draw do
  resources :lists
  get 'home/index'
  root "home#index"
end
