Rails.application.routes.draw do
  
  resources :educators, only: [:index]
  resources :universities, only: [:index]
  resources :books, only: [:index]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
