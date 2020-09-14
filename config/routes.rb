Rails.application.routes.draw do
  devise_for :users
  root "fragments#index"
  resources :fragments, only: [:index, :new]
end
