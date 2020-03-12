Rails.application.routes.draw do
  devise_for :users
  

  resources :reports do
  end
  namespace :api do
    resources :categorys, only: :index, defaults: { format: 'json' }
  end

  
  root "tops#index"


end
