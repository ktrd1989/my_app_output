Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show, :new, :edit, :update] do
    collection do
      get :login
      get :logout
    end
  end
  root "tops#index"


end
