Rails.application.routes.draw do

  resources :items, only: [:index, :show] do
  end

  resources :users, only: [:index, :show] do
    resources :items, only: [:index, :show, :create]
  end

end
