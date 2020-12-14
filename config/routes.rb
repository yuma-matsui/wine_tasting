Rails.application.routes.draw do
  devise_for :users
  root to: 'wines#home'
  resources :wines, only: [:new, :create, :edit, :destroy, :update, :show] do
    resources :favorites, only: [:create, :destroy]
  end
end
