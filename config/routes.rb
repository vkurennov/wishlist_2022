Rails.application.routes.draw do
  devise_for :users
  resources :lists do
    resources :wishes, shallow: true
  end

  get 'home/index'
  root "home#index"
end
