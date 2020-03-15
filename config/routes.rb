Rails.application.routes.draw do
  devise_for :users
  
  namespace :reports do
    resources :searches, only: :index
  end
  
  resources :reports do
    #コメント情報を作る機能
    resources :comments, only: :create
  end

  namespace :api do
    resources :categorys, only: :index, defaults: { format: 'json' }
  end

  
  root "tops#index"


end
