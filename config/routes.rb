Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'

  # Defines the root path route ("/")
  # root "articles#index"

  # lists routes

  # get "lists", to: "lists#index"
  # get "lists/:id", to: "lists#show"
  # get "lists/new", to: "lists#new"
  # get "lists/:id/edit", to: "lists#edit"
  # delete "lists/:id", to: "lists#destroy"
  # patch "lists/:id", to: "lists#update"
  # post "lists", to: "lists#create"

  resources :lists do
    resources :bookmarks, only: %i[new create show]
  end
  resources :bookmarks, only: [:destroy]
  # get "lists/:id/bookmarks/new", to: "bookmarks#new"
end
