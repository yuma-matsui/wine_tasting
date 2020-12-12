Rails.application.routes.draw do
  devise_for :users
  root to: 'wines#home'
  resources :wines, only: [:new, :create, :edit, :destroy, :update, :show] 
end
