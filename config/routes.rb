Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :education_centers do
    resources :reviews
    resources :careers, only: [:show]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
