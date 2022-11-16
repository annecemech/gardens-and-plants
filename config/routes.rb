Rails.application.routes.draw do
  root to: "gardens#index"

  resources :gardens do
    resources :plants, only: [:new, :create]
  end

  resources :plants, only: [:destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
