Rails.application.routes.draw do
  devise_for :users
  

  resources :reports do
  end
  
  root "tops#index"


end
