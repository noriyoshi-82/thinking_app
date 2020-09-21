Rails.application.routes.draw do
  get 'comments/new'
  devise_for :users
  root "fragments#index"
  resources :fragments, only: [:index, :new, :create, :show] do
    member do
      resources :comments, only: [:create]
    end
  end
end
