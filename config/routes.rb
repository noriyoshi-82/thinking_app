Rails.application.routes.draw do
  get 'comments/new'
  devise_for :users
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  root "fragments#index"
  resources :fragments, only: [:index, :new, :create, :show] do
    member do
      resources :comments, only: [:create]
      resources :likes, only: [:create, :destroy]
    end
  end
end
