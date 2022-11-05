Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :education_centers do
    resources :reviews, only: [:new, :create]
    resources :careers, only: [:new, :create]
  end

  resources :quizzes do
    resources :questions, only: [:index, :new, :create]
    resources :resultados, only: [:show]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
