Rails.application.routes.draw do

  devise_for :users
  root "messages#index"
  resources :messages
  resources :users, only: [:index, :edit, :updat]
  resources :group, only: [:new, :create, :edit, :updata]do
    resources :messages, only: [:index, :create]
  end
end



