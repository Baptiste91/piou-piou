Rails.application.routes.draw do
  devise_for :users
  root to: "messages#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :messages, only: [:index, :show, :create]
  get "/tags/:name/messages", to: "messages#messages", as: :tags
end
