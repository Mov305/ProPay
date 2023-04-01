Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "home#index" # the controller is home and the action is index

  resources :group, only: [:index, :show, :new, :create] do
    resources :payment, only: [:new, :create]
  end
end
