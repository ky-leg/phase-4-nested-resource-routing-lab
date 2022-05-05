Rails.application.routes.draw do

  resources :items, only: [:index, :create] do
    resources :users, only: [:show]
  end

  resources :users, only: [:index, :show] do
    resources :items, only: [:index]
  end

end
